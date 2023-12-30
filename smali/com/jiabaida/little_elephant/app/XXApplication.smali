.class public Lcom/jiabaida/little_elephant/app/XXApplication;
.super Landroid/app/Application;
.source "XXApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;
    }
.end annotation


# static fields
.field private static APP_INSTANCE:Lcom/jiabaida/little_elephant/app/XXApplication; = null

.field private static final TAG:Ljava/lang/String; = "XXApplication"


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;

.field private networkChangeReceiver:Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;
    .locals 1

    .line 73
    sget-object v0, Lcom/jiabaida/little_elephant/app/XXApplication;->APP_INSTANCE:Lcom/jiabaida/little_elephant/app/XXApplication;

    return-object v0
.end method

.method private initApplication(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/BaseUtils;->init(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->init(Landroid/content/Context;)V

    .line 109
    invoke-static {p1}, Lcom/jiabaida/little_elephant/app/AppConfig;->onAppInit(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/app/XXApplication;->initDB(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CrashHandler;->instance(Landroid/app/Application;)Lcom/jiabaida/little_elephant/util/CrashHandler;

    .line 116
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "280bbe088e"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private initDB(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getLogPath()Ljava/lang/String;
    .locals 2

    const-string v0, "XXApplication"

    const-string v1, "getLogPath()"

    .line 78
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/jiabaida/little_elephant/app/AppConfig;->getLogPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x4000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVersionCode(Landroid/content/Context;)I
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/app/XXApplication;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    return p1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0, p0}, Lcom/jiabaida/little_elephant/app/XXApplication;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    sput-object p0, Lcom/jiabaida/little_elephant/app/XXApplication;->APP_INSTANCE:Lcom/jiabaida/little_elephant/app/XXApplication;

    .line 50
    invoke-direct {p0, p0}, Lcom/jiabaida/little_elephant/app/XXApplication;->initApplication(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clj/fastble/BleManager;->init(Landroid/app/Application;)V

    .line 58
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->enableLog(Z)Lcom/clj/fastble/BleManager;

    move-result-object v0

    const-wide/16 v2, 0x1388

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lcom/clj/fastble/BleManager;->setReConnectCount(IJ)Lcom/clj/fastble/BleManager;

    move-result-object v0

    const/16 v1, 0x1388

    .line 62
    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->setOperateTimeout(I)Lcom/clj/fastble/BleManager;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/app/XXApplication;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;-><init>(Lcom/jiabaida/little_elephant/app/XXApplication;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/app/XXApplication;->networkChangeReceiver:Lcom/jiabaida/little_elephant/app/XXApplication$NetworkChangeReceiver;

    .line 67
    iget-object v1, p0, Lcom/jiabaida/little_elephant/app/XXApplication;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/jiabaida/little_elephant/app/XXApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onKillProcess()V
    .locals 1

    .line 83
    sget-object v0, Lcom/jiabaida/little_elephant/app/XXApplication;->APP_INSTANCE:Lcom/jiabaida/little_elephant/app/XXApplication;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 126
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
