.class public Lcom/jiabaida/little_elephant/db/BleDeviceController;
.super Ljava/lang/Object;
.source "BleDeviceController.java"


# static fields
.field private static mDbController:Lcom/jiabaida/little_elephant/db/BleDeviceController;


# instance fields
.field private beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

.field private context:Landroid/content/Context;

.field private final dbNameStr:Ljava/lang/String;

.field private mDaoMaster:Lcom/xioaxiang/greendao/DaoMaster;

.field private mDaoSession:Lcom/xioaxiang/greendao/DaoSession;

.field private mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xiaoxiangBMS.db"

    .line 44
    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->dbNameStr:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->context:Landroid/content/Context;

    .line 67
    new-instance v1, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    .line 68
    new-instance p1, Lcom/xioaxiang/greendao/DaoMaster;

    invoke-direct {p0}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xioaxiang/greendao/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mDaoMaster:Lcom/xioaxiang/greendao/DaoMaster;

    .line 69
    invoke-virtual {p1}, Lcom/xioaxiang/greendao/DaoMaster;->newSession()Lcom/xioaxiang/greendao/DaoSession;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mDaoSession:Lcom/xioaxiang/greendao/DaoSession;

    .line 70
    invoke-virtual {p1}, Lcom/xioaxiang/greendao/DaoSession;->getBleDeviceListBeanDao()Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BleDeviceController;
    .locals 2

    .line 50
    sget-object v0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mDbController:Lcom/jiabaida/little_elephant/db/BleDeviceController;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/jiabaida/little_elephant/db/BleDeviceController;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mDbController:Lcom/jiabaida/little_elephant/db/BleDeviceController;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/jiabaida/little_elephant/db/BleDeviceController;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/db/BleDeviceController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mDbController:Lcom/jiabaida/little_elephant/db/BleDeviceController;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mDbController:Lcom/jiabaida/little_elephant/db/BleDeviceController;

    return-object p0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "xiaoxiangBMS.db"

    invoke-direct {v0, v1, v3, v2}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "xiaoxiangBMS.db"

    invoke-direct {v0, v1, v3, v2}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BleDeviceListBeanDao$Properties;->BleMacAddress:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method

.method public insert(Lcom/jiabaida/little_elephant/db/BleDeviceListBean;)J
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0, p1}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplace(Lcom/jiabaida/little_elephant/db/BleDeviceListBean;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public searchAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BleDeviceListBean;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchByWhere(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BleDeviceListBean;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BleDeviceListBeanDao$Properties;->BleMacAddress:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public searchByWhereSingle(Ljava/lang/String;)Lcom/jiabaida/little_elephant/db/BleDeviceListBean;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BleDeviceListBeanDao$Properties;->BleMacAddress:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    return-object p1
.end method

.method public update(Lcom/jiabaida/little_elephant/db/BleDeviceListBean;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BleDeviceListBeanDao$Properties;->BleMacAddress:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;->getBleMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BleDeviceController;->beanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-virtual {v0, p1}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
