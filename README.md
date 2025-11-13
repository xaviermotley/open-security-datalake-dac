# 🤠 Open Security Data Lake + Detections-as-Code  
**Operationalizing OCSF + Sigma + Attack Simulation in AWS**  

[![Built with AWS Security Lake](https://img.shields.io/badge/Built%20with-AWS%20Security%20Lake-orange?logo=amazonaws)](https://aws.amazon.com/security-lake/)  [![OCSF Compliant](https://img.shields.io/badge/Data%20Model-OCSF-blue?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMjAgMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHJlY3Qgd2lkdGg9IjIwIiBoZWlnaHQ9IjIwIiByeD0iMyIgZmlsbD0iIzAwN0JGNCIvPjx0ZXh0IHg9IjUiIHk9IjE1IiBmb250LXNpemU9IjEwIiBmaWxsPSIjZmZmIj5PQzwvdGV4dD48L3N2Zz4=)](https://schema.ocsf.io/)  [![Detections-as-Code](https://img.shields.io/badge/CI%2FCD-Detections--as--Code-success?logo=githubactions&logoColor=white)](https://github.com/features/actions)  [![Validated with Stratus Red Team](https://img.shields.io/badge/Validated%20with-Stratus%20Red%20Team-critical?logo=firefoxbrowser)](https://stratus-red-team.cloud/)  [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)  

---  

## 📘 Overview  
This project operationalizes **AWS Security Lake**, **OCSF normalization**, **Sigma detections**, and **Stratus Red Team** attack simulation inside a single GitHub-driven pipeline.

You’ll stand up a real AWS Security Data Lake, author and test detections-as-code, simulate attacks, and produce measurable detection coverage.  

---  

## ⚡️ Quickstart  
```bash  
git clone https://github.com/xaviermotley/open-security-datalake-dac.git  
cd open-security-datalake-dac  
bash datalake/enable-security-lake.sh  
python3 datalake/normalize-ocsf.py  
bash detections/ci/compile-to-splunk.sh  
bash simulations/tests/validate-detections.sh  
python3 detections/ci/detection-report.py  
```  
✅ Outputs  
- `detections-report.md` — detection coverage summary  
- `datalake/notebooks/analyze-events.ipynb` — explore OCSF data  
- GitHub Actions — automated validation and reports  

![Architecture](docs/open-security-datalake-dac-architecture.png)  
![Quickstart Flow](docs/quickstart-flow.png)  

---  

## 📝 Architecture  
```mermaid  
graph TD  
    A[Enable Security Lake + Collect Data] --> B[Normalize Events with OCSF Schema]  
    B --> C[Store in Amazon Security Lake]  
    C --> D[Analyze with Athena / Notebooks]  
    D --> E[Author Sigma Rules in GitHub]  
    E --> F[CI/CD Pipeline: Lint + Compile + Validate]  
    F --> G[Deploy to SIEM or Security Lake Analytics]  
    G --> H[Simulate Attacks with Stratus Red Team]  
    H --> I[Generate Detection Coverage Report]  
```  

---  

## 📂 Key Files  
| Path | Description |  
|------|--------------|  
| `datalake/enable-security-lake.sh` | Enables Security Lake and sources |  
| `datalake/normalize-ocsf.py` | Converts CloudTrail logs into OCSF schema |  
| `detections/sigma/*.yml` | Sigma detection rules |  
| `simulations/tests/validate-detections.sh` | Runs Stratus simulations |  
| `.github/workflows/detections-ci.yml` | CI/CD automation workflow |  

---  

## 📈 Example Report  
| Rule | Scenario | Status | Coverage | Last Run |  
|------|-----------|---------|-----------|-----------|  
| s3-public-access.yml | aws.s3.bucket-enumeration | ✅ | 100% | 2025-11-09 |  
| iam-passrole-abuse.yml | aws.iam.passrole.misuse | ⚠️ | 80% | 2025-11-09 |  

---  

## 📑 References  
- [Operationalizing Amazon Security Lake](https://aws.amazon.com/security-lake/)  
- [SigmaHQ Rules](https://github.com/SigmaHQ/sigma)  
- [Stratus Red Team](https://stratus-red-team.cloud)  
- [OCSF Schema](https://schema.ocsf.io)  
- [MITRE ATT&CK](https://attack.mitre.org)  

---  

## 💄 License  
MIT License © 2025 [Xavier Motley](https://linkedin.com/in/xaviermotley) 
