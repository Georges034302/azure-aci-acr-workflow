# 🚀 Word Count CI/CD with ACR + ACI + GitHub Actions
This project demonstrates a complete CI/CD pipeline using **Azure Container Registry (ACR)**, **Azure Container Instances (ACI)**, and **GitHub Actions**, triggered by changes to a data file.

## 🎓 Project overview:

- 🧪 Demo App: A Python script counts words in specific data.txt and updates index.html dynamically.
- 🛠️ Automation: GitHub Actions runs the entire pipeline using Bash and Python scripts.
- 🐳 Docker Build: A custom Docker image is built on every change and pushed to ACR.
- 🚀 Deployment: The container is automatically deployed to ACI.
- 🔄 Trigger: The CI/CD workflow is triggered by changes to specific data.txt.
- ⚙️ Integration: Fully integrates GitHub Codespaces, GitHub Actions, Azure CLI, ACR, and ACI.
- 🌐 Live Output: The updated word count is viewable at a public URL (FQDN) after deployment.

---

## 📌 Project Highlights

- ✅ Runs entirely in **GitHub Codespaces**
- ✅ Automates word counting from `specific data.txt` using Python
- ✅ Updates `index.html` dynamically with the word count
- ✅ Builds and pushes Docker images to ACR
- ✅ Automatically deploys the updated app to ACI
- ✅ Shows the public ACI URL (FQDN) after deployment

---

## 📁 Project Structure

.github/workflows/
│
├── apps/
│   │
│   └── app.py
│               
├── scripts/
│   │
│   ├── setup.sh              
│   ├── run_app.sh            
│   ├── update_html.sh        
│   ├── git_push.sh        
│   ├── deploy.sh            
│   └── entrypoint.sh  
│     
├── ci.yml                    
└── deploy.yml              
index.html                 
specific data.txt           
Dockerfile                    

---

## 🌐 Live App Access (FQDN)
http://wordcountdemo.australiaeast.azurecontainer.io

