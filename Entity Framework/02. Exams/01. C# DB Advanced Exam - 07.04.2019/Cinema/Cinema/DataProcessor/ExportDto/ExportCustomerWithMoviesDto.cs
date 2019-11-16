﻿using Newtonsoft.Json;

namespace Cinema.DataProcessor.ExportDto
{
    public class ExportCustomerWithMoviesDto
    {
        [JsonProperty("FirstName")]
        public string FirstName { get; set; }

        [JsonProperty("LastName")]
        public string LastName { get; set; }

        [JsonProperty("Balance")]
        public string Balance { get; set; }
    }
}