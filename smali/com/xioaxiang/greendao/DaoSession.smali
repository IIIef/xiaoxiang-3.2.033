.class public Lcom/xioaxiang/greendao/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final bMSRealTimeDataBeanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

.field private final bMSRealTimeDataBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final bleDeviceListBeanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

.field private final bleDeviceListBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 36
    const-class p1, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/xioaxiang/greendao/DaoSession;->bMSRealTimeDataBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 37
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 39
    const-class v0, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/xioaxiang/greendao/DaoSession;->bleDeviceListBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 40
    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 42
    new-instance p2, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    invoke-direct {p2, p1, p0}, Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xioaxiang/greendao/DaoSession;)V

    iput-object p2, p0, Lcom/xioaxiang/greendao/DaoSession;->bMSRealTimeDataBeanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    .line 43
    new-instance p1, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    invoke-direct {p1, p3, p0}, Lcom/xioaxiang/greendao/BleDeviceListBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xioaxiang/greendao/DaoSession;)V

    iput-object p1, p0, Lcom/xioaxiang/greendao/DaoSession;->bleDeviceListBeanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    .line 45
    const-class p3, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {p0, p3, p2}, Lcom/xioaxiang/greendao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 46
    const-class p2, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    invoke-virtual {p0, p2, p1}, Lcom/xioaxiang/greendao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xioaxiang/greendao/DaoSession;->bMSRealTimeDataBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 51
    iget-object v0, p0, Lcom/xioaxiang/greendao/DaoSession;->bleDeviceListBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getBMSRealTimeDataBeanDao()Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xioaxiang/greendao/DaoSession;->bMSRealTimeDataBeanDao:Lcom/xioaxiang/greendao/BMSRealTimeDataBeanDao;

    return-object v0
.end method

.method public getBleDeviceListBeanDao()Lcom/xioaxiang/greendao/BleDeviceListBeanDao;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xioaxiang/greendao/DaoSession;->bleDeviceListBeanDao:Lcom/xioaxiang/greendao/BleDeviceListBeanDao;

    return-object v0
.end method
