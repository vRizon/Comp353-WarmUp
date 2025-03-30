// In src/components/Locations.js

import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Locations = () => {
  const [locations, setLocations] = useState([]);

  // Fetch data when the component mounts
  useEffect(() => {
    axios
      .get('http://localhost:5000/api/locations')
      .then((response) => {
        setLocations(response.data);  // Set data to state
      })
      .catch((error) => {
        console.error('Error fetching data:', error);
      });
  }, []);

  return (
    <div>
      <h1>Locations</h1>
      <table>
        <thead>
          <tr>
          <th>Location ID</th>
            <th>Location Name</th>
            <th>Type</th>
            <th>City</th>
            <th>Province</th>
            <th>Postal Code</th>
            <th>Phone Number</th>
            <th>Web Address</th>
            <th>Max Capacity</th>
          </tr>
        </thead>
        <tbody>
          {locations.map((location) => (
            <tr key={location.LocationID}>
              <td>{location.LocationID}</td>
              <td>{location.Name}</td>
              <td>{location.Type}</td>
              <td>{location.City}</td>
              <td>{location.Province}</td>
              <td>{location.PostalCode}</td>
              <td>{location.PhoneNumbers}</td>
              <td>{location.WebAddress}</td>
              <td>{location.MaxCapacity}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Locations;
