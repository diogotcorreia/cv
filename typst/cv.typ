#import "@preview/basic-resume:0.2.4": *

#let name = "Diogo Correia"
#let email = "me@diogotc.com"
#let github = "github.com/diogotcorreia"
#let linkedin = "linkedin.com/in/diogotcorreia"
#let personal-site = "diogotc.com"

#show: resume.with(
  author: name,
  email: email,
  github: github,
  linkedin: linkedin,
  personal-site: personal-site,
  accent-color: "#0b3948",
  font: "libertinus serif",
  paper: "a4",
  author-position: center,
  personal-info-position: center,
)

#set document(title: name + "'s CV")

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */
== Education

#edu(
  institution: "KTH Royal Institute of Technology",
  location: "Stockholm, Sweden",
  dates: dates-helper(start-date: "Aug 2023", end-date: "Oct 2025"),
  degree: "Master of Science, Cybersecurity (TCYSM)",
)
- Master's Thesis: #link("https://s.diogotc.com/thesis")["Classa: Uncovering Class Pollution In Python"],
  resulting in the reporting of critical-severity
  #link("https://github.com/advisories/GHSA-mw26-5g2v-hqw3")[CVE-2025-58367]
// - Courses in Network & Systems Security, Cryptography, Ethical Hacking, and Language Based Security, among others

#edu(
  institution: "Instituto Superior Técnico",
  location: "Lisbon, Portugal",
  dates: dates-helper(start-date: "Sept 2020", end-date: "July 2023"),
  degree: "Bachelor of Science, Computer Science and Engineering (LEIC-A)",
)
- Final Grade: 19/20 | Awarded Academic Excellence Diploma | Top 3 of graduating students in programme
- Elected Year Delegate (2020 -- 2023) and Degree Delegate (2022 -- 2023), representing the programme's students
- Member of the university's Pedagogic Council (2022 -- 2023)

== Work Experience

#work(
  title: "Penetration Tester",
  location: "Remote",
  company: "Ethiack",
  dates: dates-helper(start-date: "Nov 2024", end-date: "Present"),
)
- Conducted penetration testing for Ethiack's customers,
  finding high-severity vulnerabilities and proposing mitigations

#work(
  title: "Research Assistant (Amanuensis)",
  location: "Stockholm, Sweden",
  company: "LangSec Group, KTH Royal Institute of Technology",
  dates: dates-helper(start-date: "Sep 2024", end-date: "Jan 2025"),
)
// - Researched the impacts and prevalence of client-side *prototype pollution* in JavaScript on various websites
- Developed a Chromium fork to detect *prototype pollution* gadgets when visiting a vulnerable website, using dynamic analysis

#work(
  title: "Full Stack Developer (Research Initiation Grant)",
  location: "Lisbon, Portugal",
  company: [DASI --- Técnico Lisboa's IT Services],
  dates: dates-helper(start-date: "Apr 2021", end-date: "July 2024"),
)
- Maintained the school's learning management system (Java, Vue) and adjacent systems, used daily by *10k+ students*
- Developed a new version of Técnico's public API, complete with a spec-compliant OpenAPI reference and extensive
  documentation, allowing students and faculty to build new applications around it

== Projects

#project(
  name: "Linux Install Party",
  dates: "2021, 2022",
)
- Co-organised events to get 50+ students at the university to install Linux for the first time, along with a dozen
  other volunteers
// - Helped students with troubleshooting installation problems and more complex installation scenarios

#project(
  name: "Resumos LEIC",
  role: "Founder & Major Contributor",
  url: "resumos.leic.pt",
  dates: dates-helper(start-date: "Feb 2021", end-date: "Present"),
)
- Created a website dedicated to the collaborative writing of class notes focused on the courses
  in the curriculum of the BSc in Computer Science at Técnico Lisboa,
  which regularly gets *30k+ monthly views* and has more than 60 contributors

#project(
  name: "Triton",
  url: "github.com/tritonmc/Triton",
  dates: dates-helper(start-date: "Oct 2016", end-date: "Present"),
)
- Developed a Minecraft plugin that intercepts network packets in order to translate messages to the player's
  language
- Used by 200+ Minecraft servers, and sold more than 900 licenses since 2016

#project(
  name: "Self-Hosting",
  dates: dates-helper(start-date: "2017", end-date: "Present"),
)
- Maintaining 6 infrastructure-as-code NixOS servers, both on-premise and in the cloud, with *20+ services* such as
  file storage, e-mail, SSO, LDAP, an overlay VPN network (Nebula), and home automation, complete with
  monitoring, alerts and backups
- Using a NixOS server as a router at home, configured with iptables firewall, 4 VLANs, DHCP server, and
  DNS over HTTPS proxy
- Gained deep knowledge in administrating Linux systems, in particular tools such as Docker and Systemd, as well
  as concepts such as network security, software packaging, infrastructure-as-code, database administration,
  and DevSecOps

#project(name: "Open Source")
- Contributed to many open source projects, such as
  #link("https://github.com/NixOS/nixpkgs/pulls?q=author%3Adiogotcorreia")[nixpkgs],
  #link("https://github.com/strapi/strapi/pulls?q=author%3Adiogotcorreia")[Strapi],
  #link("https://github.com/immich-app/immich/pulls?q=author%3Adiogotcorreia")[Immich],
  #link("https://github.com/vuejs/vuepress/pulls?q=author%3Adiogotcorreia")[Vuepress],
  #link("https://github.com/firefly-iii/data-importer/pulls?q=author%3Adiogotcorreia")[Firefly-III],
  and more

== Extracurricular Activities

#extracurriculars(
  activity: "Capture The Flag Competitions",
  dates: dates-helper(start-date: "Sep 2022", end-date: "Present"),
)
- Represented Portugal at the European Cybersecurity Challenge (#link("https://ecsc.eu/")[ECSC]) in 2024 & 2025;
  nominated for
  #link(
    "https://www.enisa.europa.eu/topics/skills-and-competences/skills-development/international-cybersecurity-challenge-icc",
  )[Team Europe]
  Cohort 2025
- Member of Security Team \@ Técnico (#link("https://sectt.github.io/")[STT]) and
  #link("https://royalroppers.team/")[RoyalRoppers]
- Interested in web exploitation challenges, in particular client-side XS-Leaks vulnerabilities

== Skills
- *Programming Languages*: Rust, Nix, JavaScript, Java, Python, HTML, CSS, C, SQL, Bash
- *Technologies*: Linux (NixOS, Arch, Debian-based), Git, Docker, Systemd, Axum, Rocket-rs, React, Astro, NodeJS
- *Languages*: English (C1, IELTS Academic 8.0), Portuguese (Native), Swedish (A1)
