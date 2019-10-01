# Tru-King Server
 This is a truckload management app which will help small trucking companies achieve new levels of productivity, efficiency and profitability. This app begins with a common sense of workflow and adds easy to use tools that deliver meaningful information so your operations personnel can make smart and timely assignments. This app is specifically designed for Full Truckload Carriers. 

 #### Setup Instructions
 1. Run `git clone https://github.com/romiaujla/tru-king-server.git`, to clone the repo on your local machine.
 2. Next run `npm i` to install all the dependencies.
 3. Create a database named `tru_king_db`.
 4. Run `npm migrate` to setup the database tables.
 5. Run `psql -c "COPY states(state_id, state_name) FROM '[~your-path]/content/state.csv' delimiter ',' csv";` to insert US states into the states table.
 6. 
