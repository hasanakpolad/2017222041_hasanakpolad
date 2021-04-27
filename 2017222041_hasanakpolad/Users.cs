namespace _2017222041_hasanakpolad
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Users
    {
        public int Id { get; set; }

        [StringLength(25)]
        public string UserName { get; set; }

        [StringLength(25)]
        public string Password { get; set; }

        [StringLength(25)]
        public string PasswordConfirm { get; set; }

        [StringLength(25)]
        public string Gender { get; set; }
    }
}
