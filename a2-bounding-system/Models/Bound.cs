//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace a2_bounding_system.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bound
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bound()
        {
            this.Replays = new HashSet<Replay>();
        }
    
        public int bound_id { get; set; }
        public string bound_name { get; set; }
        public Nullable<int> bound_high_score { get; set; }
        public Nullable<int> bound_difficulty { get; set; }
        public Nullable<int> bound_obstacles { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Replay> Replays { get; set; }
    }
}
