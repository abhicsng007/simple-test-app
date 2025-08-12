import React from 'react';

function Dashboard() {
  const handleLogout = () => {
    localStorage.removeItem('token');
    window.location.href = '/';
  };

  return (
    <div>
      <h2>Dashboard</h2>
      <p>Welcome! You are authenticated.</p>
      <button onClick={handleLogout}>Logout</button>
    </div>
  );
}

export default Dashboard;