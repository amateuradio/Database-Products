//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Database_Products
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.MaintenanceWorks = new HashSet<MaintenanceWork>();
        }
    
        public System.Guid Id { get; set; }
        public int Number { get; set; }
        public string Serie { get; set; }
        public System.DateTime ProduceDate { get; set; }
        public System.DateTime SaleDate { get; set; }
        public int Prise { get; set; }
        public string SailorName { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MaintenanceWork> MaintenanceWorks { get; set; }
    }
}
