## 🚀 Word Count CI/CD with ACR + ACI + GitHub Actions
This project demonstrates a complete CI/CD pipeline using **Azure Container Registry (ACR)**, **Azure Container Instances (ACI)**, and **GitHub Actions**, triggered by changes to a data file.

### 📌 Project Highlights:
- ⚙️ Integration: Fully integrates (GitHub Actions + ACR + ACI) CI/CD pipeline.
- 🔐 Setup: Configure Azure (Resource Group, ACR, Service Principal) and set GitHub Actions secrets.
- 🧪 Demo App: A Python script counts words in specific data.txt 
- 🛠️ Automation: GitHub Actions runs the entire pipeline using Bash and Python scripts.
- 🐳 Docker Build: A custom Docker image is built on every change and pushed to ACR.
- 🚀 Deployment: The container is automatically deployed to ACI.
- 🔄 Trigger: The CI/CD workflow is triggered by changes to specific data.txt.
- ✅ Sucess: Dynamically update `index.html` with the word count and `README` with the curent 🌐FQDN
- 🌐 Live Output: The updated word count is viewable at a public URL (FQDN) after deployment.

---

### 📁 Project Structure

.github/workflows/\
│\
├── apps/\
│   &ensp;&ensp;&ensp;└── app.py          
├── scripts/\
│   &ensp;&ensp;&ensp;├── setup.sh   (One-time script - initialization)      
│   &ensp;&ensp;&ensp;├── gh_setup.sh   (One-time script - initialization)            
│   &ensp;&ensp;&ensp;├── update_html.sh\
│   &ensp;&ensp;&ensp;├── update_readme.sh         
│   &ensp;&ensp;&ensp;├── git_push.sh        
│   &ensp;&ensp;&ensp;├── deploy.sh            
│   &ensp;&ensp;&ensp;├── entrypoint.sh\
│   &ensp;&ensp;&ensp;└── cleanup.sh   (One-time script - clean up azure resources)     
│     
├── ci.yml                    
└── deploy.yml

index.html                 
specific data.txt           
Dockerfile\
.gitignore                

---

### 🚀 Deployment Steps

1. **Fork or Clone the Repository**
   ```bash
   git clone https://github.com/<your-username>/azure-aci-acr-workflow.git
   cd azure-aci-acr-workflow
   ```

2. **Run Setup Script (One-time)**
   - Configure Azure resources and GitHub secrets:
   ```bash
   ./scripts/setup.sh
   ```

3. **Push Changes to Trigger CI/CD**
   - Make changes to `data.txt` or source code, then push:
   ```bash
   git add .
   git commit -m "Your changes"
   git push
   ```

4. **How Deployment Works**
   - The `.github/workflows/deploy.yml` GitHub Actions workflow is triggered on every push.
   - This workflow:
     - Builds the Docker image.
     - Pushes it to Azure Container Registry (ACR).
     - Runs `.github/scripts/deploy.sh` to deploy the image to Azure Container Instances (ACI).
   - The `deploy.sh` script handles logging in to ACR, creating/updating the container instance, and passing environment variables.

5. **Monitor GitHub Actions**
   - Go to the **Actions** tab in your GitHub repo to watch the workflow run.

6. **Access the Live App**
   - After deployment, visit the FQDN shown below to view the updated app.\
   ✅ Example Output:\
   🌐 FQDN: http://wordcountdemo-14901658158.australiaeast.azurecontainer.io

---

### 🧹 Clean Up Azure Resources

To delete all Azure resources created for this project, run:
```bash
./scripts/cleanup.sh
```
This will remove the Azure Container Instance, Container Registry, and Resource Group.

---

<sub><i><span style="color:#B0B0B0">👤 Author: **Georges Bou Ghantous**</span></i></sub>
