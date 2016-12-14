// Common : For reg , login etc , common to all.


using data_layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
namespace Classes
{
    public class CommonClass    
    {
        public int Register(patient p)
        {
           // try
            {
                DataClassesDataContext dc = new DataClassesDataContext();
                dc.patients.InsertOnSubmit(p);
                dc.SubmitChanges();
                
            }
           // catch(Exception e)
            {
                
             //   return false;
            }

            return p.patientid;
        }
        public bool login(patient p)
        {
            int cnt = 0;
            DataClassesDataContext dc = new DataClassesDataContext();
            var query = from patient in dc.GetTable<patient>() where patient.email == p.email && patient.password == p.password select patient;
            foreach(var q in query)
            {
                cnt++;
            }  
            if(cnt==1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    //Since we can not return anonymous types , :
    public class ActCases
    {
        public string fname { get; set; }
        public string ailments { get; set; }
        public int caseid { get; set; }
        public int patientid { get; set; }
        public string chiefcomplaint { get; set; }
        public DateTime date { get; set; }
    }
    public class DoctorClass
    {

        DataClassesDataContext dc = new DataClassesDataContext();
        public bool login(doctor p)
        {
            int cnt = 0;
            DataClassesDataContext dc = new DataClassesDataContext();
            var query = from doctor in dc.GetTable<doctor>() where doctor.email == p.email && doctor.password == p.password select doctor;
            foreach (var q in query)
            {
                cnt++;
            }
            if (cnt == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public List<ActCases> viewActiveCases(int dr_id)
        {
            //get active cases from case_master treated by given doctor & get name of the patient
            var ActiveCases = from x in dc.GetTable<case_master>()
                              join y in dc.GetTable<doctor_case>() on x.caseid equals y.caseid
                              join z in dc.GetTable<patient>() on x.patientid equals z.patientid
                              where x.isactive == "yes"
                              where y.doctorid == dr_id
                              select new { z.fname, x.ailments,x.caseid ,x.chiefcomplaint,x.date,x.patientid };

            // Convert to list cause can not return anonymous types.
            List<ActCases> lac = new List<ActCases>();

            foreach (var abc in ActiveCases)    //generate list
            {
                ActCases ac = new ActCases();
                ac.fname = abc.fname;
                ac.ailments = abc.ailments;
               ac.caseid = abc.caseid;
                ac.patientid = abc.patientid;
                ac.date = abc.date;
                ac.chiefcomplaint = abc.chiefcomplaint;
                lac.Add(ac);
            }
            return lac;
        }

        public patient searchPatient(int patientid)
        {
            var Patients = from x in dc.GetTable<patient>()
                           where x.patientid == patientid
                           select x;
            foreach (var y in Patients)
            {
                return (patient)y;
            }

            return null;
        }

        public doctor getDoctor(int dr_id)
        {
            var doc = from x in dc.GetTable<doctor>()
                      where x.doctorid == dr_id
                      select x;
            foreach (var abc in doc)
            {
                return (doctor)abc;
            }
            return null;
        }

        public IQueryable<doctor> getAllDoctors()
        {
            var drs = from x in dc.GetTable<doctor>()
                      select x;

            return drs;
        }

        //To Bind with Gridview
        public IQueryable<doctor> getDoctorAsQueryable(int dr_id)
        {
            var doc = from x in dc.GetTable<doctor>()
                      where x.doctorid == dr_id
                      select x;
            return doc;
        }
        public bool editDoctor(doctor d, bool admin)
        {
            doctor dr = (from x in dc.GetTable<doctor>()
                         where x.doctorid == d.doctorid
                         select x).SingleOrDefault();

            if (admin == true)
            {
                dr.name = d.name;
                dr.dob = d.dob;
                dr.experience = d.experience;
                dr.salary = d.salary;
                dr.field = d.field;
                dr.qualification = d.qualification;
            }
            //set updated values :                   
            dr.email = d.email;
            dr.phoneno = d.phoneno;
            dr.address = d.address;
            dr.password = d.password;


            dc.SubmitChanges();

            //If error , return false
            return true;
        }

    }

    //Since we can not return anonymous types , :
    public class ItemsInBill
    {
        public int itemid { get; set; }
        public string itemname { get; set; }
        public int cpi { get; set; }
        public int qty { get; set; }
    }
    public class CostManagerClass
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        public IQueryable<cheque> viewCheques()
        {
            var v = from x in dc.GetTable<cheque>()
                    select x;
            return v;
        }
        public bool addItem(item i)
        {
            dc.items.InsertOnSubmit(i);
            dc.SubmitChanges();
            return true;
        }
        public bool modifyItem(item updItem)
        {
            item it = (from x in dc.GetTable<item>()
                       where x.itemid == updItem.itemid
                       select x).SingleOrDefault();


            //set updated values : 
            it.cost_per_item = updItem.cost_per_item;
            it.name = updItem.name;

            dc.SubmitChanges();
            //If error , return false
            return true;

        }
        public item getItem(int id)
        {
            var i = from x in dc.GetTable<item>()
                    where x.itemid == id
                    select x;
            foreach (var v in i)
            {
                return (item)v;
            }
            return null;
        }
        //Bills
        public int createBill(int CaseId)
        {
            bill_master b = new bill_master();
            b.caseid = CaseId;
            b.date = DateTime.Now;
            b.paid ="No";
            b.total = 0;
            dc.bill_masters.InsertOnSubmit(b);
            dc.SubmitChanges();
            return b.billid;
        }
        public bool addItemsToBill(int BillId, int itemid, int qty)
        {
            bill_item bi = new bill_item();
            bi.billid = BillId;
            bi.itemid = itemid;
            bi.qty = qty;
            dc.bill_items.InsertOnSubmit(bi);
            dc.SubmitChanges();

            bill_master bil = (from x in dc.GetTable<bill_master>()
                        where x.billid == BillId
                        select x).SingleOrDefault();
            item cos = (from x in dc.GetTable<item>()
                        where x.itemid == itemid
                        select x).SingleOrDefault();
            bil.total += (cos.cost_per_item * qty);

            dc.SubmitChanges();

            return true;
        }
        public IQueryable<bill_master> viewBills(int CaseId)
        {
            var y = from x in dc.GetTable<bill_master>()
                    where x.caseid == CaseId
                    select x;
            return (y);
        }
        public IQueryable<item> viewItems()
        {
            IQueryable<item> y = from x in dc.GetTable<item>()
                                 select x;
            return y;
        }
        public List<ItemsInBill> viewItemsInBill(int BillId)
        {
            var iib = from x in dc.GetTable<bill_item>()
                      join y in dc.GetTable<item>() on x.itemid equals y.itemid
                      where x.billid == BillId
                      select new { y.itemid, y.name, y.cost_per_item, x.qty };

            List<ItemsInBill> lib = new List<ItemsInBill>();

            foreach (var x in iib)
            {
                ItemsInBill ib = new ItemsInBill();
                ib.itemid = x.itemid;
                ib.itemname = x.name;
                ib.qty = x.qty;
                ib.cpi = x.cost_per_item;
                lib.Add(ib);
            }
            return lib;
        }

        public bool billPaid(int BillId)
        {//upates balance onhand ; bill can not be modified now.
         //If bill is already paid ; error
            bill_master v = (from x in dc.GetTable<bill_master>()
                    where x.billid == BillId
                    select x).SingleOrDefault();

            var abc = (from x in dc.GetTable<case_master>()
                      where x.caseid == v.caseid
                      select x).SingleOrDefault();

            abc.isactive = "no";
            dc.SubmitChanges();

            v.paid = "yes";
            long sal, starting_balance, final_balance;
            sal = v.total;
            starting_balance = getBalance();
            final_balance = starting_balance + sal;

            cost c = new cost();
            c.date = DateTime.Now;
            c.starting_balance = starting_balance;
            c.billid = BillId;
            c.chequeid = 0;     
            c.final_balance = final_balance;
            setBalance(final_balance);
            dc.costs.InsertOnSubmit(c);
            dc.SubmitChanges();
            return true;
        }
        /*     public List<item> viewBill(int BillId)
             {
                 return true;
             }
            public List<bill> viewBillsInCase(int CaseId)
             {
                 return true;
             }

         */
        public bool giveSalaries()
        {
           
            DoctorClass docs = new DoctorClass();

            //GetAllDoctors
            IQueryable<doctor> ld = docs.getAllDoctors();
            long sal, starting_balance, final_balance;

            //Check if all doctors can be given salaries
            bool res = checkEnoughCash();
            if (res == false)
            {
                return false;
            }
            //Give Salaries
            foreach (var doc in ld)
            {
                //Generate Cheque
                cheque chq = new cheque();
                chq.doctorid = doc.doctorid;
                chq.date = DateTime.Now;
                chq.amount = doc.salary;
                dc.cheques.InsertOnSubmit(chq);
                dc.SubmitChanges();

                //Log it and modify Balance
                sal = doc.salary;
                starting_balance = getBalance();
                final_balance = starting_balance - sal;

                cost c = new cost();
                c.date = DateTime.Now;
                c.starting_balance = starting_balance;
                c.billid = 0;
                c.chequeid = getLastChequeId(chq);     //Cheque id of the last cheque inserted
                c.final_balance = final_balance;
                setBalance(final_balance);
                dc.costs.InsertOnSubmit(c);
                dc.SubmitChanges();
            }
            return true;
        }
        public bool checkEnoughCash()
        {
            DoctorClass docs = new DoctorClass();
            IQueryable<doctor> ld = docs.getAllDoctors();
            long bal = getBalance();
            foreach (var doc in ld)
            {
                bal = bal - doc.salary;
            }
            if (bal >= 0)
            {
                return true;
            }
            return false;
        }
        public int getLastChequeId(cheque q)
        {
            cheque c = ((from x in dc.GetTable<cheque>()
                         where x.doctorid == q.doctorid && x.amount == q.amount && x.date == q.date
                         orderby x.date descending
                         select x).Take(1)).SingleOrDefault();

            return c.chequeid;
        }
        public long getBalance()
        {
            var b = (from x in dc.GetTable<PresentBalance>()
                     select x).SingleOrDefault();
            return b.Id;

            /*cost c = ((from x in dc.GetTable<cost>()
                       orderby x.date descending
                       select x).Take(1)).SingleOrDefault();

            return c.final_balance;*/
        }
        public void setBalance(long l)
        {
            var v = (from x in dc.GetTable<PresentBalance>()
                     select x).SingleOrDefault();
            v.Id = (int)l;
            dc.SubmitChanges();
        }

       
        
        public IQueryable<cost> viewCostHistory()
        {
            IQueryable<cost> c = from x in dc.GetTable<cost>()
                                 select x;
            return c;
        }
    }

    public class AdminClass
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        public bool addDoctor(doctor d)
        {

            dc.doctors.InsertOnSubmit(d);
            dc.SubmitChanges();

            return true;
        }
        public List<doctor> viewDoctors()
        {
            var Doctors = from x in dc.GetTable<doctor>()
                          select x;
            return Doctors.ToList();
        }
        public bool registered(doctor d)
        {
            var v = from x in dc.GetTable<doctor>()
                    where x.email == d.email
                    select x;
            if (v == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }

    public class RoomClass
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        public bool addRoom(room_master r)
        {
            dc.room_masters.InsertOnSubmit(r);
            dc.SubmitChanges();
            return true;
        }
        public IQueryable<room_master> viewRooms()
        {
            var v = from x in dc.GetTable<room_master>()
                    select x;
            return v;
        }
        public bool deleteRoom(int id)
        {
            var v = (from x in dc.GetTable<room_master>()
                     where x.roomid == id
                     select x).SingleOrDefault();
            if (v == null) { return false; }
            dc.room_masters.DeleteOnSubmit(v);
            dc.SubmitChanges();
            return true;
        }

    }
}
