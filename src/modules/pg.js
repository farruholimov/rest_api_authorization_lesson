import Pool from "pg-pool";

const pool = new Pool({
    database: "rest_api",
    user: "postgres",
    password: "salom",
    port: 5432
});

async function main(){
    try {
        const client = await pool.connect();

        const users = await client.query(`SELECT * FROM users`)
        // const new_user = await client.query(`INSERT INTO users (user_name, user_username, user_password, user_role) VALUES ('Someone', 'smn_007', 'someone', 'user');`)

        console.log(users.rows);

    } catch (error) {
        console.log("PG_ERROR: ", error);
    }
}

main();