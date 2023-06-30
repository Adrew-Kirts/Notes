# Système et réseau

>* Comprendre les rouages des réseaux informatiques et d'Internet
>* Comprendre et avoir une vue d’ensemble du modèle OSI et TCP/IP
>* Connaître les principaux équipements physiques d’une architecture Réseaux
>* Comprendre le principe d’un DNS (Domain Name System)
>* Comprendre le fonctionnement du protocol HTTP


## 1 — Le réseau, c’est quoi ?

**- Pour vous, qu’est ce qu’un réseau ?**

En premier ressort, un réseau désigne au sens concret « un ensemble de lignes entrelacées » et, au figuré « un ensemble de relations »

**- Quel est le lien entre la notion de réseau et Internet?**

Internet est un système de réseaux informatiques reliés entre eux. C'est d'ailleurs de là que vient son nom: Internet est la contraction d'«interconnected network»

**- Quelle est la différence entre Internet et le Web ? Ou a-t-il été inventé ?**

L'internet c'est un réseau informatique mondial, c'est grâce à l'internet que tu peux envoyer des courriels par exemple. Le Web c'est le système qui permet de naviguer de page en page en cliquant sur des liens dans un navigateur.
Le web inventé par Tim Berners-Lee au CERN en 1989

**- Quels sont les différents types de réseaux informatiques ? Pour chaque type de réseau, donner un exemple concret.**

   1. LAN (Local Area Network) : Un réseau local qui connecte des dispositifs dans une zone géographique restreinte. Exemple : Le réseau dans une entreprise.

    2. WAN (Wide Area Network) : Un réseau étendu qui relie plusieurs réseaux locaux sur une plus grande zone géographique. Exemple : Internet.

    3. WLAN (Wireless Local Area Network) : Un réseau local sans fil utilisant des technologies telles que le Wi-Fi. Exemple : Un réseau Wi-Fi domestique.

    4. VPN (Virtual Private Network) : Un réseau privé virtuel qui permet une connexion sécurisée sur un réseau public, généralement utilisé pour accéder à distance à des ressources d'entreprise. Exemple : Une entreprise utilisant un VPN pour permettre aux employés de se connecter à distance.

    5. Intranet : Un réseau privé basé sur les technologies Internet, accessible uniquement aux membres d'une organisation. Exemple : Un intranet utilisé par une entreprise pour partager des informations internes.

    6. Extranet : Un réseau qui permet à des utilisateurs externes d'accéder à certaines ressources d'une organisation. Exemple : Un portail client donnant accès à des informations spécifiques aux clients d'une entreprise.

    7. PAN (Personal Area Network) : Un réseau personnel qui relie des dispositifs personnels sur une courte distance. Exemple : Une connexion Bluetooth entre un téléphone et des écouteurs sans fil.

**- Quels sont les principaux équipements physiques d’un réseau LAN?**

Ordinateur | Cable ethernet | Ordinateur 

**- Qu’est ce que la commande ping ? A quoi sert-elle ?**

Ping est le nom d'une commande informatique permettant de tester l'accessibilité d'une autre machine à travers un réseau IP. La commande mesure également le temps mis pour recevoir une réponse, appelé round-trip time. 


**- Essayer par vous même : Dans votre terminal, taper les différentes lignes de commandes suivantes :**
ping google.com
ping 192.0.2.255
ping 172.217.20.174


**- Pour chaque commande lancée, faites défiler 5 lignes et faites CTRL+C. Lisez les statistiques de la commande et expliquez ce qu’il s’est passé.**

PING google.com (216.58.214.174) 56(84) bytes of data.
64 bytes from mad01s26-in-f174.1e100.net (216.58.214.174): icmp_seq=1 ttl=117 time=12.2 ms

En mettant dans le terminal:

```bash
ping google.com
```

On reçoit: 

```bash
user@user-HP-ProDesk-600-G3-SFF:~/Downloads$ ping google.com
PING google.com (216.58.214.174) 56(84) bytes of data.
64 bytes from mad01s26-in-f14.1e100.net (216.58.214.174): icmp_seq=1 ttl=117 time=12.5 ms
64 bytes from par10s42-in-f14.1e100.net (216.58.214.174): icmp_seq=2 ttl=117 time=12.3 ms
64 bytes from mad01s26-in-f14.1e100.net (216.58.214.174): icmp_seq=3 ttl=117 time=12.1 ms
64 bytes from par10s42-in-f14.1e100.net (216.58.214.174): icmp_seq=4 ttl=117 time=12.0 ms
^C
--- google.com ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3005ms
rtt min/avg/max/mdev = 12.048/12.224/12.500/0.185 ms
```

**Explicatif**: 

ICMP: Internet Control Message Protocol est l’un des protocoles fondamentaux constituant la suite des protocoles Internet. C'est un protocole de couche réseau, au même niveau que le protocole Internet.

TTL: Le Time to Live, abrégé TTL, indique le temps pendant lequel une information doit être conservée, ou le temps pendant lequel une information doit être gardée en cache


TIME: Le temps mis pour envoyer le packet et avoir un retour 


Ce qui veut dire: 
- ping google.com:
- Recherche l'adresse IP associé à google.com;
- Envoie des (4) petits packets de 64 bytes depuis un serveur pas loin (en europe) à (l'adresse IP de google);

Résultats: 
- 4 packets reçu par le serveur google, 4 packets reçu en retour depuis le serveur google, 0% des packets ont été perdu en route (par ex. par faute de connexion, problème serveur etc) et le temps (3,5s) pour le faire.


## 2.  Création d'un réseau entre un PC et un serveur 

Mission: Starlit Publishing

*Lier l'ordinateur personnel à un serveur de stockage à distance*

Components de base:

> PC
>
> Serveur de stockage

- Quelles sont les machines / types de machines qui vont intervenir dans ce réseau ?

Serveur de stockage 

PC

FAI (fournisseur d'acces internet)

Box fibre


- Quel type de support de communication choisir ?(câble cuivre, fibre optique, Sans-fil...)

Pour un PC je choisis un cable ethernet car le PC ne bouge pas et la connexion cablé et plus performant et stable que sans-fil


- Comment les machines sont identifiées au sein d’un réseau ?

Par leur adresse MAC d'abord et leur adresse IP dynamique


- Qu’est ce qu’une interface réseau ?

La partie qui assure la connexion entre un terminal utilisateur et un réseau. Ex.: NIC (carte d'interface réseau informatique), aujourd'hui toujours présent de base dans un ordinateur.

- Qu’est ce qu’une adresse MAC ?

L'adresse physique et unique de la carte réseau, codé en dur par le constructeur.


- Qu’est ce qu’une adresse IP ? Comment peut-on la paramétrer ?

 L'adresse dynamique lié à une carte réseau. TCP /IP est un moyen standard pour les machines à communiquer. Il fournit l'adresse IP qui sont liés à des cartes réseau et échange les informations en utilisant le protocole TCP.
 
 Normalement un ordindateur utilise DHCP (Dynamic Host Configuration Protocol). Le protocole DHCP affecte automatiquement des adresses IP (Internet Protocol) aux ordinateurs de votre réseau.

 On peut également attitrer une adresse IP statique. Cela peut causer des problèmes si plusieurs ordinateurs dans le même réseau utilisent cette même adresse IP.

- Comment tester la bonne configuration et la communication entre deux machines (Dans la vraie vie et pas sur Cisco Packet Tracer)?

Avec un ping entre les deux ordinateurs 

**Screenshot du réseau:**

![reseau](https://image.noelshack.com/fichiers/2023/26/4/1688030073-screenshot-from-2023-06-29-11-14-12.png)

Le paquet de test est envoyé depuis l'ordinateur au serveur, qu'il le reçoit et renvoie un paquet pour attester de sa bonne réception.


## 3 - Ajout d'un PC au réseau


Pour rajouter un ordinateur:

![reseau](https://image.noelshack.com/fichiers/2023/26/4/1688031889-screenshot-from-2023-06-29-11-44-34.png)

Le paquet de test est envoyé depuis l'ordinateur au serveur en passant par le switch, qu'il le reçoit et renvoie un paquet pour attester de sa bonne réception.


## 4 - Connexion avec une autre entreprise

*Questions*:

**Soit l’adresse réseau suivante : 192.168.1.0**

- Quel est son masque ?

/24

- Combien d'adresses IP peut-on attribuer dans ce réseau. Attention, il y a
un piège : faite une recherche sur l’adresse IP de broadcast

254 (on ne peut pas attribuer .0 et .255)

**Soit les adresses ip suivantes : 192.168.1.1/24 et 192.168.24.3/24**

- Sont-elles sur le même réseau ?

Non

- Quelles sont les adresses réseaux respectives ?

L'un est sur le réseau 192.168.1 et l'autre sur 192.168.24


Screenshot du réseau:

![reseau](https://image.noelshack.com/fichiers/2023/26/4/1688040779-screenshot-from-2023-06-29-14-12-48.png)


Le paquet de test commence au Pc-Oriontech2, passe par le switch, le routeur, le switch de l'autre réseau pour aller au pc directeur. Puis fait le chemin inverse en retour.


## 5 - Lien avec les modèles théoriques: OSI et TCP/IP

OSI (Open systems Interconnection)

*Le modèle OSI (Open Systems Interconnection) est un modèle de référence utilisé pour décrire le fonctionnement des réseaux informatiques. Il est composé de sept couches, chacune ayant un rôle spécifique dans la transmission des données.*

Couche physique :

Description : Cette couche est responsable de la transmission des bits bruts sur le support physique, comme les câbles, les fibres optiques ou les ondes radio.
Exemple d'élément associé : Câbles Ethernet, fibres optiques, antennes Wi-Fi.

Couche liaison de données :

Description : Cette couche gère les connexions directes entre les nœuds du réseau et garantit la fiabilité de la transmission en détectant et en corrigeant les erreurs.
Exemple d'élément associé : Cartes réseau, commutateurs Ethernet.

Couche réseau :

Description : Cette couche s'occupe du routage des paquets de données à travers le réseau. Elle permet d'établir des chemins efficaces entre les nœuds en utilisant des protocoles de routage.
Exemple d'élément associé : Routeurs, adresses IP.

Couche transport :

Description : Cette couche assure le transport fiable et ordonné des données d'un point à un autre. Elle segmente les données, les réassemble et gère le contrôle de flux et la correction d'erreurs.
Exemple d'élément associé : Protocole TCP (Transmission Control Protocol).

Couche session :

Description : Cette couche établit, maintient et termine les sessions de communication entre les applications des nœuds du réseau. Elle gère également les échanges de données synchronisés.
Exemple d'élément associé : API de sockets.

Couche présentation :

Description : Cette couche gère la représentation et la syntaxe des données échangées entre les applications. Elle s'occupe également de la compression, du chiffrement et de la conversion de formats.
Exemple d'élément associé : Protocole SSL/TLS, formats de fichiers (JPEG, PDF).

Couche application :

Description : Cette couche représente les applications et les protocoles spécifiques utilisés par les utilisateurs finaux pour accéder aux services réseau. Elle fournit une interface pour l'interaction avec les services réseau.
Exemple d'élément associé : Protocole HTTP, navigateurs web, clients de messagerie.


Ce modèle est important pour harmoniser, faire fonctionner et interconnecter des réseaux.


TCP/IP

- Qu’est ce que TCP et IP ?

TCP/IP signifie Transmission Control Protocol/Internet Protocol (Protocol de contrôle des transmissions/Protocole Internet). TCP/IP est un ensemble de règles normalisées permettant aux ordinateurs de communiquer sur un réseau tel qu'Internet.

IP est la partie qui obtient l'adresse à laquelle les données sont envoyées. TCP est responsable de la livraison des données une fois que cette adresse IP a été trouvée.

- Décrivez les couches qui le composent

Couche de liaison de données

La couche de liaison de données : 

Egalement appelée couche d'interface réseau ou couche physique, gère les parties physiques de l'envoi et de la réception de données à l'aide du câble Ethernet, du réseau sans fil, de la carte d'interface réseau, du pilote de périphérique de l'ordinateur, etc.

Couche Internet :

La couche Internet, également appelée couche réseau, contrôle le mouvement des paquets sur le réseau.

Couche transport :

La couche transport fournit une connexion des données fiable entre deux appareils. Elle divise les données en paquets, accuse réception des paquets qu'elle a reçus de l'autre appareil et s'assure que ce dernier accuse réception des paquets qu'il reçoit.

Couche application :

La couche application est le groupe d'applications nécessitant une communication réseau. Il s'agit généralement de l'application avec laquelle l'utilisateur interagit, comme les e-mails et la messagerie. Parce que les couches inférieures gèrent les détails de la communication, les applications n'ont pas besoin de s'en préoccuper.

- Faites le lien avec le modèle OSI

![difference_TCP/IP_et_OSI](https://cdn.ttgtmedia.com/digitalguide/images/Misc/lp_062204.gif)



Les couches du OSI en lien avec mon réseau:

![lien_OSI_réseau](https://image.noelshack.com/fichiers/2023/26/5/1688111995-screenshot-from-2023-06-30-09-59-24.png)



# Service DNS

## Compétences

● Comprendre comment fonctionne le service DNS

● Implémentation d’un serveur DNS dans une architecture réseau local

● Configuration d’un nom de domaine pour le faire pointer vers un serveur web

## 1 - Un service DNS, c'est quoi ?

- Quel est l’ordre des actions (Requête/Réponse DNS, ping) effectuées pour
réaliser lorsque, depuis le PC10, j’utilise la commande ping PC11 ? 

Attention : le PC10 ne connaît pas l’adresse IP de PC11.

PC10 fait une requete DNS pour avoir l'adresse IP de PC11, une fois reçu il envoie son paquet qui passe par le switch pour aller au PC11, puis fait le chemin inverse.


## 2 — Déployez et configurez un serveur DNS sur Cisco Packet Tracer

![dns serveur](https://image.noelshack.com/fichiers/2023/26/5/1688116566-screenshot-from-2023-06-30-11-16-02.png)


## 3 - Configurer un record DNS avec Cloudflare

➔ Faites une recherche sur les principes de base des noms de domaine afin de
comprendre ce qu’est un sous-domaine

➔ Une explication des différents types d’enregistrement DNS


**Enregistrement A** - L'enregistrement qui contient l'adresse IP d'un domaine. En savoir davantage sur l'enregistrement A.

**Enregistrement AAAA** - L'enregistrement qui contient l'adresse IPv6 d'un domaine (par opposition aux enregistrements A, qui répertorient l'adresse IPv4). En savoir plus sur l'enregistrement AAAA.

**Enregistrement CNAME** - Transfère un domaine ou un sous-domaine à un autre domaine, ne fournit PAS d'adresse IP. En savoir davantage sur l'enregistrement CNAME.

**Enregistrement MX** - Dirige le courrier vers un serveur de messagerie. En savoir davantage sur l'enregistrement MX.

**Enregistrement TXT** - Permet à un administrateur de stocker des notes de texte dans l'enregistrement. Ces enregistrements sont souvent utilisés pour la sécurité des e-mails. En savoir plus sur l'enregistrement TXT.

**Enregistrement NS** - Stocke le serveur de noms pour une entrée DNS. En savoir plus sur l'enregistrement NS.

**Enregistrement SOA **- Stocke les informations administratives d'un domaine. En savoir davantage sur l'enregistrement SOA.

**Enregistrement SRV** - Spécifie un port pour des services spécifiques. En savoir davantage sur l'enregistrement SRV.

**Enregistrement PTR** - Fournit un nom de domaine dans les recherches inversées. En savoir davantage sur l'enregistrement PTR.


- Un screenshot de votre enregistrement DNS dans Cloudflare

![dns](https://image.noelshack.com/fichiers/2023/26/5/1688117751-screenshot-from-2023-06-30-11-35-38.png)

- Un screenshot de votre site web qui affichera votre nom

![nom](https://image.noelshack.com/fichiers/2023/26/5/1688117751-screenshot-from-2023-06-30-11-35-38.png)


# Protocole HTTP

- Qu’est ce qu’une API (et plus spécifiquement une API REST)?

Une API est un ensemble de définitions et de protocoles qui facilite la création et l'intégration de logiciels d'applications. Elle est parfois considérée comme un contrat entre un fournisseur d'informations et un utilisateur d'informations, qui permet de définir le contenu demandé au consommateur (l'appel) et le contenu demandé au producteur (la réponse). 

Une API REST (Representational State Transfer Application Program Interface) est une interface de programmation d'application (API ou API web) qui respecte les contraintes du style d'architecture REST et permet d'interagir avec les services web RESTful.

- Qu’est ce que le protocole HTTP ?

L'Hypertext Transfer Protocol (HTTP, littéralement « protocole de transfert hypertexte ») est utilisé pour charger des pages sur Internet à l'aide d'hyperliens.

- Quelles sont les méthodes disponibles avec le protocole HTTP ?


**GET**

La méthode GET demande une représentation de la ressource spécifiée. Les requêtes GET doivent uniquement être utilisées afin de récupérer des données.

**HEAD**

La méthode HEAD demande une réponse identique à une requête GET pour laquelle on aura omis le corps de la réponse (on a uniquement l'en-tête).

**POST**

La méthode POST est utilisée pour envoyer une entité vers la ressource indiquée. Cela entraîne généralement un changement d'état ou des effets de bord sur le serveur.

**PUT**

La méthode PUT remplace toutes les représentations actuelles de la ressource visée par le contenu de la requête.

**DELETE**

La méthode DELETE supprime la ressource indiquée.

**CONNECT**

La méthode CONNECT établit un tunnel vers le serveur identifié par la ressource cible.

**OPTIONS**

La méthode OPTIONS est utilisée pour décrire les options de communications avec la ressource visée.

**TRACE**

La méthode TRACE réalise un message de test aller/retour en suivant le chemin de la ressource visée.

**PATCH**

La méthode PATCH est utilisée pour appliquer des modifications partielles à une ressource.


- Quelle est la différence entre le protocole HTTP et le protocole HTTPS ?

Le protocole HTTPS est sécurisé par un protocole de transport, à savoir SSL/TLS

- Qu’est ce qu’un Bearer token ?

Un "Bearer Token" est un JSON Web Token dont le rôle est d'indiquer que l'utilisateur qui accède aux ressources est bien authentifié. Il doit donc commencer par récupérer le token puis l'envoyer au serveur, à chaque requête, pour que celui-ci le valide (en fonction de différentes règles: validation de la clé, validation de l'audience, etc.)

