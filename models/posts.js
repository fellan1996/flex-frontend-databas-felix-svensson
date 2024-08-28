const db = require("./../db_connection");

class Post {
  constructor({ id, title, slug, content }) {
    this.id = id;
    this.title = title;
    this.slug = slug;
    this.content = content;
  }

  static async getBySlug(slug) {
    return new Promise((resolve, reject) => {
      const sql = "SELECT * FROM posts WHERE slug = ?";
      const values = [slug];
      db.query(sql, values, function (error, results, fields) {
        if (error) {
          reject(error);
        } else {
          if (results.length > 0) {
            resolve(results);
          } else {
            reject(new Error("None found"));
          }
        }
      });
    });
  }

  static async getStats() {
    return new Promise((resolve, reject) => {
      db.query(
        // "SELECT COUNT(id) as post_count FROM posts",
        "SELECT (SELECT COUNT(id) FROM posts) AS post_count, (SELECT COUNT(id) FROM users) AS user_count",
        function (error, results, fields) {
          if (error) {
            reject(error);
          } else {
            if (results.length > 0) {
              resolve(results);
            } else {
              reject(new Error("None found"));
            }
          }
        }
      );  
    })
  }
  static async getAll() {
    return new Promise((resolve, reject) => {
      db.query(
        "SELECT * FROM posts ORDER BY created_at DESC",
        function (error, results, fields) {
          if (error) {
            reject(error);
          } else {
            if (results.length > 0) {
              resolve(results);
            } else {
              reject(new Error("None found"));
            }
          }
        }
      );
    });
  }

  async create() {
    const date = new Date();
    date.setHours(date.getHours() + 2);
    const formattedDate = date.toISOString().slice(0, 19).replace("T", " ");

    const sql = `
            INSERT INTO posts
                (user_id, title, slug, content, created_at)
            VALUES
                (?, ?, ?, ?, ?)
            `;
    const values = [1, this.title, this.slug, this.content, formattedDate];

    const result = db.query(
        sql,
        values,
        function (error, results, fields) {
            if (error) throw error;
        }
    );
  }
}

module.exports = Post;
