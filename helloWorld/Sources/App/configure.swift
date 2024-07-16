
import Fluent
import FluentSQLiteDriver

// configures your application
public func configure(_ app: Application) async throws {
    app.logger.logLevel = .debug // 기본 로그 레벨을 .debug 로 설정
    
    // 데이터베이스 드라이버 로드
    app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    try routes(app)
}
