using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Text.RegularExpressions;
using System.Web;
using BOL_HRMS;

namespace BLL_HRMS
{
    public class MAU_HRMS
    {
        TBL_UserAccount user = new TBL_UserAccount();
        TBL_Collage collage = new TBL_Collage();
        TBL_Department dept = new TBL_Department();
        TBL_JobPost job = new TBL_JobPost();
        TBL_Notice notice = new TBL_Notice();
        TBL_Training training = new TBL_Training();
        TBL_Vaccancy vaccancy = new TBL_Vaccancy();
        TBL_ExperienceRequest experienceRequest = new TBL_ExperienceRequest();
        TBL_ContractRenewalRequest contract = new TBL_ContractRenewalRequest();
        TBL_Deal deal = new TBL_Deal();
        TBL_Employee employee = new TBL_Employee();
        TBL_Applicant applicant = new TBL_Applicant();
        TBL_GenerateID id_generate = new TBL_GenerateID();
        TBL_EmployeeLeave leave = new TBL_EmployeeLeave();
        Account_Applicant accountapplicant = new Account_Applicant();
        TBL_Menu menu = new TBL_Menu();
        TBL_UsermenuRole role=new TBL_UsermenuRole();
        TBL_Attendance attendance= new TBL_Attendance();
        // ========================================================================================
        //                                    UserAccount
        //=========================================================================================
        public TBL_UserAccount[] login(String Username, String Password)
        {
            user.Username = Username;
            user.Password = Password;
            return user.userlogin();
        }
        public bool CreateAccount(String Employee_Id, String Username, String Password, String Email, String Role, int Status)
        {
            user.Employee_Id = Employee_Id;
            user.Username = Username;
            user.Password = Password;
            user.Email = Email;
            user.Role = Role;
            user.Status = Status;
            String result = user.CreateAccount();
            return true;
        }
        public TBL_UserAccount[] SearchUsernameById(String Username)
        {
            user.Username = Username;
            return user.SearchUsernameById();
        }

        public TBL_UserAccount[] CheckSecurityAnswer(String Username, String Security_Answer)
        {
            user.Username = Username;
            user.Security_Answer = Security_Answer;
            return user.CheckSecurityAnswer();
        }
        public bool changePassword(String Username, String Password)
        {
            user.Username = Username;
            user.Password = Password;
            user.changePassword();
            return true;
        } 
        public bool Security(String Username, String Security_Question, String Security_Answer)
        {
            user.Username = Username;
            user.Security_Question = Security_Question;
            user.Security_Answer= Security_Answer;
            user.Security();
            return true;
        }


            //===============================================================================
            //                           collage
            //===============================================================================
            //1
            public bool addCollage(String cid,String Collage_Name, String Collage_Location)
        {
            collage.Collage_Id = cid;
            collage.College_Name = Collage_Name;
            collage.College_Location = Collage_Location;
            bool result = collage.addcollage();
            return true;
        }

        public TBL_Collage[] seearchcollage()
        {
            return collage.seearchcollage();
        }
        //2
        //=================================================================
        //                      DEPARTMENT
        //---------========================================================
        public bool addDept(String Dept_Id, String Dept_Name, String College_Id)
        {
            dept.Dept_Id = Dept_Id;
            dept.Dept_Name = Dept_Name;
            dept.College_Id = College_Id;
            String result = dept.addDept();
            return true;
        }
        public TBL_Department[] searchdept()
        {
            return dept.searchdept();
        }
        public TBL_Department[] searchdeptbyId(String Dept_Id)
        {
            dept.Dept_Id = Dept_Id;
            return dept.searchdeptbyId();
        }
        //========================================================================================
        //                                     Generate Id
        //========================================================================================
        public bool generate_emp_ID(String id, String dept, String img, DateTime reg_date)
        {
            id_generate.Employee_Id = id;
            id_generate.Employee_Dept = dept;
            id_generate.Employee_Image = img;
            id_generate.Reg_date = reg_date;
            String result = id_generate.registerempID();
            return true;

        }

        //3
        //===============================================================================
        //                              JOBPOST
        //===============================================================================
        public bool addJobPost(String Location, String Title, String Description, DateTime PostedDate,  String Employee_Id)
        {
            try
            {
             job.Location = Location;
            job.Title = Title;
            job.Description = Description;
            job.PostedDate = PostedDate;
            job.Employee_Id = Employee_Id;
            String result = job.addPost();
            return true;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script> alert('Connecting to DB error:'" + ex.Message + "'); </script>");
                return false;
            }

        }
        public TBL_JobPost[] viewPost()
        {
            return job.ViewPost();
        }
        //4
        public bool addNotice(String NLocation, String NTitle, String NDescription, DateTime NPostedDate, String Employee_Id)
        {
            notice.NLocation = NLocation;
            notice.NTitle = NTitle;
            notice.NDescription = NDescription;
            notice.NPostedDate = NPostedDate;
            notice.Employee_Id = Employee_Id;
            String result = notice.addNotice();
            return true;
        }
        //5
        public bool addTraining(String Training_Title, String Training_Description, DateTime PostedDate, String Employee_Id)
        {
            
            training.Training_Title = Training_Title;
            training.Training_Description = Training_Description;
            training.PostedDate = PostedDate;
            training.Employee_Id = Employee_Id;
            String result = training.addTraining();
            return true;
        }
        //6
        public bool addVaccancy(String Dept, String Criteria, int NoVaccancy, DateTime Date, String Employee_Id)
        {           
            vaccancy.Dept = Dept;
            vaccancy.Criteria = Criteria;
            vaccancy.NoVaccancy = NoVaccancy;
            vaccancy.Date = Date;
            vaccancy.Employee_Id = Employee_Id;
            String result = vaccancy.addVaccancy();
            return true;
        }
        //7
        //================================================================================
        //================EXPerience

        public bool addExperienceRequest(String Employee_Id, String Reason, DateTime RequestDate)
        {
            experienceRequest.Employee_Id = Employee_Id;
            experienceRequest.Reason = Reason;
            experienceRequest.RequestDate = RequestDate;       
            String result = experienceRequest.addExperienceRequest();
            return true;
        }
        public bool DHEapprove(int Id ,int yu)
        {
            experienceRequest.Id = Id;
            experienceRequest.DH_Approval = yu;
           experienceRequest.DHEapprove();
            return true;
        }
        
        public bool CDEapprove(int Id, int yu)
        {
            experienceRequest.Id = Id;
            experienceRequest.DH_Approval = yu;
            experienceRequest.CDEapprove();
            return true;
        }
        //8
        public bool addContractRequest(String Employee_Id, String Reason, DateTime RequestDate)
        {
            contract.Employee_Id = Employee_Id;
            contract.Reason = Reason;
            contract.RequestDate = RequestDate;
            String result = contract.addContractRequest();
            return true;
        }
        //9
     
        //-============================================------======--==================================
        //                                         DEAL
        //==================================================================================================
        public bool AddDeal(String Employee_Id,int Training_Id, String Referee_FirstName, String Referee_MiddleName, String Referee_LastName, String Referee_Region , String Referee_Zone, String Referee_Kebele,
                            String Referee_HouseNo, String Referee_PhoneNo , String TermsAndConditions, DateTime PostedDate)
        {
           
                 deal.Employee_Id= Employee_Id;
            deal.Training_Id = Training_Id;
            deal.Referee_FirstName = Referee_FirstName;
            deal.Referee_MiddleName = Referee_MiddleName;
            deal.Referee_LastName = Referee_LastName;
            deal.Referee_Region = Referee_Region;
            deal.Referee_Zone = Referee_Zone;
            deal.Referee_Kebele = Referee_Kebele;
            deal.Referee_HouseNo = Referee_HouseNo;
            deal.Referee_PhoneNo = Referee_PhoneNo;
            deal.TermsAndConditions = TermsAndConditions;
            deal.PostedDate = PostedDate;          
            String result = deal.addDeal();
            return true;
                      
        }
        public TBL_Deal[] checkexist(int Training_Id, String Employee_Id)
        {
            deal.Training_Id = Training_Id;
            deal.Employee_Id = Employee_Id;
            return deal.checkexist();
        }

        //10
        // ===================================================================================
        //                          EMPLOYEE TABLE
        //=================================================================================
        public bool Registration(String Employee_Id, String FirstName, String MiddleName, 
                                String LastName,DateTime DOB,String BP, String Sex, String Email,
                                String Stream, String Position, String Region, String Zone, 
                                String Kebele, String HouseNo, String PhoneNo, String InstitutionStudied,
                                String FieldOfStudy, String DiplomaAwarded, DateTime IDE, DateTime IDEbyMAU,
                                String Dept_Id, float Salary, String MartialStatus, int NoOfChildren, String JobStatus)
        {
            employee.Employee_Id = Employee_Id;
            employee.FirstName = FirstName;
            employee.MiddleName = MiddleName;
            employee.LastName = LastName;
            employee.DOB = DOB;
            employee.BP = BP;
            employee.Sex = Sex;
            employee.Email = Email;
            employee.Stream = Stream;
            employee.Position = Position;
            employee.Region = Region;
            employee.Zone = Zone;
            employee.Kebele= Kebele;
            employee.HouseNo = HouseNo;
            employee.PhoneNo = PhoneNo;
            employee.InstitutionStudied = InstitutionStudied;
            employee.FieldOfStudy = FieldOfStudy;
            employee.DiplomaAwarded = DiplomaAwarded;
            employee.IDE = IDE;
            employee.IDEbyMAU = IDEbyMAU;
            employee.Dept_Id = Dept_Id;
            employee.Salary = Salary;
            employee.MartialStatus = MartialStatus;
            employee.NoOfChildren = NoOfChildren;
            employee.JobStatus = JobStatus;
            String result = employee.Registration();
            return true;
        }
        public TBL_Employee[] seearchallemp()
        {
            return employee.searchallemp();
        }
        public TBL_Employee[] searchemployebyID(String id)
        {
            employee.Employee_Id = id;
            return employee.searchmployeebyId();
        }

        public bool RemoveEmployee(String Employee_Id)
        {
            employee.Employee_Id = Employee_Id;           
            String leave = employee.Leave();
            return true;
        }
        //===================================================================================
        //                                  Emp Leave
        //===========================================================================
        public TBL_EmployeeLeave[] LeaveSearch(string Id)
        {
            leave.Employee_Id = Id;
            return leave.LeaveSearch();
        }
        public bool LeaveRegistration(String Employee_Id, String FirstName, String MiddleName,
                                    String LastName, String Sex, String PhoneNo,
                                    String Stream, String Position, String Achivements, 
                                    DateTime IDEMAU, DateTime LDAT,
                                    String Dept_Id, float Salary, String ReasonOfLeave )
        {
            leave.Employee_Id = Employee_Id;
            leave.FirstName = FirstName;
            leave.MiddleName = MiddleName;
            leave.LastName = LastName;        
            leave.Sex = Sex;
            leave.PhoneNo = PhoneNo;
            leave.Stream = Stream;
            leave.Position = Position;
            leave.Achivements = Achivements;
            leave.IDEMAU = IDEMAU;
            leave.LDAT = LDAT;
            leave.Dept_Id = Dept_Id;
            leave.Salary = Salary;
            leave.ReasonOfLeave = ReasonOfLeave;
           
            String result = leave.RegisterLeave();
            return true;
        }
            //11

            //=======================================================================================
            //                  APPLICANT TABLE
            //========================================================================================

      /*      public bool Apply(String Applicant_FirstName, String Applicant_MiddleName, String Applicant_LastName, String Applicant_Sex, String Applicant_FieldOfStudy,
                              float Applicant_CGPA, String Applicant_Experience, Byte[] CV)
        {
            applicant.Applicant_FirstName = Applicant_FirstName;
            applicant.Applicant_MiddleName = Applicant_MiddleName;
            applicant.Applicant_LastName = Applicant_LastName;
            applicant.Applicant_Sex = Applicant_Sex;
            applicant.Applicant_FieldOfStudy = Applicant_FieldOfStudy;
            applicant.Applicant_CGPA = Applicant_CGPA;
            applicant.Applicant_Experience= Applicant_Experience;
        //    applicant.CV= CV;
            String result = applicant.Apply();
            return true;
        }
      */
        //12



        ////=============================================================
        //                  APPLICANT ACCOUNT
        //=======================================================================
        public Account_Applicant[] applicantlogin(String un, String pw)
        {
            accountapplicant.UsernameApplicant = un;
            accountapplicant.PasswordApplicant = pw;
            return accountapplicant.applicantlogin();
        }
        public bool applicantcreateAccount(String UsernameApplicant, String PasswordApplicant, String EmailApplicant)
        {
            accountapplicant.UsernameApplicant = UsernameApplicant;
            accountapplicant.PasswordApplicant = PasswordApplicant;
            accountapplicant.EmailApplicant = EmailApplicant;
            String newacc = accountapplicant.accountapplicant();
            return true;
        }
        public Account_Applicant[] SearchAppUsername(String UsernameApplicant)
        {
            accountapplicant.UsernameApplicant = UsernameApplicant;
            return accountapplicant.SearchAppUsername();
        }
        // ======================================================================
        //                  MENU
        //=========================================
        public bool AddMenu(String MenuId, String ParentMenu, String MenuName, String Link)
        {
            menu.MenuId = MenuId;
            menu.ParentMenu = ParentMenu;
            menu.MenuName = MenuName;
            menu.Link = Link;
            String newacc = menu.AddMenu();
            return true;
        }

        public TBL_Menu[] searchMenu()
        {
            return menu.searchMenu();
        }
        public TBL_Menu[] searchRootMenu(String ParentMenu)
        {
            menu.ParentMenu = ParentMenu;
            return menu.searchRootMenu();
        }


        public bool assignrole(String Username, String MenuId, int Status, String AssignedBy,DateTime Date)
        {
            role.Username = Username;
            role.MenuId = MenuId;
            role.Status = Status;
            role.AssignedBy = AssignedBy;
            role.Date = Date;
            String newacc = role.assignrole();
            return true;
        }
        //==================================================
        //                   Attendance
        //======================================================
        public TBL_Attendance[] viewattendance()
        {
          
            return attendance.viewattendance();
        }
      
    }
}