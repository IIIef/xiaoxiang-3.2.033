.class public Lcom/jiabaida/little_elephant/db/BMSRealTimeController;
.super Ljava/lang/Object;
.source "BMSRealTimeController.java"


# static fields
.field public static final dbNameStr:Ljava/lang/String; = "xiaoxiangBMS.db"

.field private static mDbController:Lcom/jiabaida/little_elephant/db/BMSRealTimeController;


# instance fields
.field private beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

.field private context:Landroid/content/Context;

.field private mDaoMaster:Lcom/xioaxiang/greendao/DaoMaster;

.field private mDaoSession:Lcom/xioaxiang/greendao/DaoSession;

.field private mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->context:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    const-string v1, "xiaoxiangBMS.db"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    .line 70
    new-instance p1, Lcom/xioaxiang/greendao/DaoMaster;

    invoke-direct {p0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xioaxiang/greendao/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mDaoMaster:Lcom/xioaxiang/greendao/DaoMaster;

    .line 71
    invoke-virtual {p1}, Lcom/xioaxiang/greendao/DaoMaster;->newSession()Lcom/xioaxiang/greendao/DaoSession;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mDaoSession:Lcom/xioaxiang/greendao/DaoSession;

    .line 72
    invoke-virtual {p1}, Lcom/xioaxiang/greendao/DaoSession;->getBMSRealTimeDataBeanDao()Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BMSRealTimeController;
    .locals 2

    .line 52
    sget-object v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mDbController:Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mDbController:Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mDbController:Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mDbController:Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    return-object p0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "xiaoxiangBMS.db"

    invoke-direct {v0, v1, v3, v2}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "xiaoxiangBMS.db"

    invoke-direct {v0, v1, v3, v2}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->mHelper:Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

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

.method public deleteAll()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->deleteAll()V

    return-void
.end method

.method public insert(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)J
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 128
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTimeStamp(J)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate_HHMM:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTimeDateDec(J)V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setId(Ljava/lang/Long;)V

    .line 139
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0, p1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplace(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 109
    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTimeStamp(J)V

    .line 111
    sget-object v2, Lcom/jiabaida/little_elephant/util/RxTimeTool;->formatDate_HHMM:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool;->milliseconds2String(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTimeDateDec(J)V

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setId(Ljava/lang/Long;)V

    .line 115
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public searchAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchByWhereSingle(Ljava/lang/String;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

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

    check-cast p1, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    return-object p1
.end method

.method public searchByWhereTime(JJLjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->TimeDateDec:Lorg/greenrobot/greendao/Property;

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object p4, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->BleMacAddress:Lorg/greenrobot/greendao/Property;

    .line 182
    invoke-virtual {p4, p5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    .line 180
    invoke-virtual {v0, p1, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array p2, p2, [Lorg/greenrobot/greendao/Property;

    sget-object p3, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object p3, p2, p5

    .line 183
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/16 p2, 0x1f4

    .line 184
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->getId()Ljava/lang/Long;

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

    check-cast p1, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->beanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-virtual {v0, p1}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;->update(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
