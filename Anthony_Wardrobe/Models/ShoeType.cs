//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Anthony_Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ShoeType
    {
        public ShoeType()
        {
            this.MyShoes = new HashSet<MySho>();
        }
    
        public int ShoeID { get; set; }
        public string ShoeType1 { get; set; }
    
        public virtual ICollection<MySho> MyShoes { get; set; }
    }
}