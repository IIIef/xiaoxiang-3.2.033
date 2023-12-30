.class public Lcom/xioaxiang/greendao/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;,
        Lcom/xioaxiang/greendao/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/xioaxiang/greendao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 50
    const-class p1, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {p0, p1}, Lcom/xioaxiang/greendao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 51
    const-class p1, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {p0, p1}, Lcom/xioaxiang/greendao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 31
    invoke-static {p0, p1}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/xioaxiang/greendao/DaoSession;
    .locals 1

    .line 39
    new-instance v0, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 40
    new-instance p1, Lcom/xioaxiang/greendao/DaoMaster;

    invoke-direct {p1, p0}, Lcom/xioaxiang/greendao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 41
    invoke-virtual {p1}, Lcom/xioaxiang/greendao/DaoMaster;->newSession()Lcom/xioaxiang/greendao/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/xioaxiang/greendao/DaoSession;
    .locals 4

    .line 55
    new-instance v0, Lcom/xioaxiang/greendao/DaoSession;

    iget-object v1, p0, Lcom/xioaxiang/greendao/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/xioaxiang/greendao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/xioaxiang/greendao/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/xioaxiang/greendao/DaoSession;
    .locals 3

    .line 59
    new-instance v0, Lcom/xioaxiang/greendao/DaoSession;

    iget-object v1, p0, Lcom/xioaxiang/greendao/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/xioaxiang/greendao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/xioaxiang/greendao/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xioaxiang/greendao/DaoMaster;->newSession()Lcom/xioaxiang/greendao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/xioaxiang/greendao/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/xioaxiang/greendao/DaoSession;

    move-result-object p1

    return-object p1
.end method
