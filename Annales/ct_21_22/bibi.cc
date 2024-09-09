#include "bibi.hh"

unsigned int etudiant::__current_id(0);

// Personne
std::string personne::nom() const
{
    return _nom;
}

personne::personne(const std::string &nom)
    : _nom(nom) {}

void personne::sortieflux(std::ostream &s) const
{
    switch (typepers()){
        case typepersonne_t::Enseingant:
            s << "Enseingant";
            break;
        case typepersonne_t::M1:
            s << "Etudiant M1";
            break;
        case typepersonne_t::M2:
            s << "Etudiant M2";
            break;
    }
    s << _nom;

}

std::ostream &operator << (std::ostream &s, personne const &p) { p.sortieflux(s); return s;}

// Etudiant
etudiant::etudiant(const std::string &nom)
    : personne(nom), _numero_etudiant(__current_id++) {}

// Etudiant M1
etudiantM1::etudiantM1(std::string const &nom, std::vector<langages_t> const &langages)
    : etudiant(nom), _langages(langages) {}

std::shared_ptr<etudiantM1> etudiantM1::fabrique(const std::string &nom, const std::vector<langages_t> &langages)
{
    if (langages.size() >= 2)
        return std::shared_ptr<etudiantM1>(new etudiantM1(nom,langages));
    return nullptr;
}

void etudiantM1::sortieflux(std::ostream &s) const
{
    personne::sortieflux(s);
    s << "-Langages: ";
    for (auto e: _langages)
        switch (e){
        case langages_t::cplusplus:
            s << " C++ ";
            break;
        case langages_t::python:
            s << " Python ";
            break;
        case langages_t::javascript:
            s << " JavaScript ";
            break;
        case langages_t::php:
            s << " PHP ";
            break;
        }
}

// Etudiant M2
etudiantM2::etudiantM2(const std::string &nom, unsigned int expertise)
    : etudiant(nom), _expertise(expertise) {}

std::shared_ptr<etudiantM2> etudiantM2::fabrique(const std::string &nom, unsigned int expertise)
{
    if (expertise <= 10 && expertise >= 0)
        return std::shared_ptr<etudiantM2>(new etudiantM2(nom,expertise));
    return nullptr;
}

void etudiantM2::sortieflux(std::ostream &s) const
{
    personne::sortieflux(s);
    s << "-Expertise: "<<_expertise;
}

// Enseignant
enseignant::enseignant(const std::string &nom, unsigned int numero_bureau)
    : personne(nom), _numero_bureau(numero_bureau) {}

void enseignant::sortieflux(std::ostream &s) const
{
    personne::sortieflux(s);
    s << "-Bureau: " << _numero_bureau;
}

// Exception
exceptionuniversite::exceptionuniversite(const std::string &message)
    : _message(message) {}



void universite::ajouter(const std::shared_ptr<personne> &p)
{
    // On recherche la personne parmi les membres
    auto it = std::find_if(_membres.begin(), _membres.end(), [&p](std::shared_ptr<personne> i){ return i->nom()==p->nom();});
    if (it != _membres.end())
        throw exceptionuniversite("Nom en double: "+(*it)->nom());
    _membres.push_back(p);
}

std::vector<std::shared_ptr<personne>> universite::rechercherdevs(const langages_t &langage) const
{
    std::vector<std::shared_ptr<personne>> result;

    // On parcourt les membres
    for (auto const &i: _membres){
        auto ii = std::dynamic_pointer_cast<etudiantM1>(i);

        if(ii && ii->maitriselangage(langage))
            result.push_back(i);
    }
    return result;
}


void projet::ajouter(const std::shared_ptr<personne> &p)
{
    if (auto pp(std::dynamic_pointer_cast<enseignant>(p)); pp){
        // Ici on veut ajouter un enseignant
        // On check le nombre d'enseignants dans le projet
        auto nb_ens = std::count_if(_membres.begin(), _membres.end(), [](std::shared_ptr<personne> const &i){  auto ii(std::dynamic_pointer_cast<enseignant>(i)); return ii; });
        if (nb_ens >= 2)
            throw exceptionuniversite("Trop d'enseignants encadrants");
    } else if (auto pp(std::dynamic_pointer_cast<etudiantM2>(p)); pp){
        // Ici on veut ajouter un etudiant en m2
        // On check le nombre de M1 et M2
        auto nb_m1 = std::count_if(_membres.begin(), _membres.end(), [](std::shared_ptr<personne> const &i){  auto ii(std::dynamic_pointer_cast<etudiantM1>(i)); return ii; });
        auto nb_m2 = std::count_if(_membres.begin(), _membres.end(), [](std::shared_ptr<personne> const &i){  auto ii(std::dynamic_pointer_cast<etudiantM2>(i)); return ii; });

        if (nb_m1 <= nb_m2)
            throw exceptionuniversite("Trop d'etudiants en M1");
    }
    _membres.push_back(p);
}
