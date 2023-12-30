.class public Lcom/jiabaida/little_elephant/app/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static BleBindStatus:Z = false

.field public static BleIsCanBind:Z = false

.field private static CACHE_APP:Ljava/lang/String; = null

.field private static DEBUG:Z = true

.field public static final HardwarePressure:Z = true

.field public static final HardwareTempPressure:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-static {}, Lcom/jiabaida/little_elephant/app/AppConfig;->initAppPath()V

    .line 68
    sget-object v0, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImagePath()Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {}, Lcom/jiabaida/little_elephant/app/AppConfig;->initAppPath()V

    .line 59
    sget-object v0, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogPath()Ljava/lang/String;
    .locals 2

    .line 49
    invoke-static {}, Lcom/jiabaida/little_elephant/app/AppConfig;->initAppPath()V

    .line 50
    sget-object v0, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initAppPath()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/SdcardUtil;->getAppPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cache/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/app/AppConfig;->CACHE_APP:Ljava/lang/String;

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/jiabaida/little_elephant/app/AppConfig;->DEBUG:Z

    return v0
.end method

.method public static onAppInit(Landroid/content/Context;)V
    .locals 0

    .line 75
    sget-boolean p0, Lcom/jiabaida/little_elephant/app/AppConfig;->DEBUG:Z

    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/LogUtils;->setDebug(Z)V

    return-void
.end method
