.class public Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;
.super Landroid/app/Service;
.source "BMSRealTimeService.java"


# static fields
.field public static final CHANNEL_ID_STRING:Ljava/lang/String; = "service_bms"

.field public static final CHANNEL_ID_STRING_ID:I = 0x67

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.net.service.BMSRealTimeService"

.field public static serials:I


# instance fields
.field BletimeHandler:Landroid/os/Handler;

.field private baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

.field private baseInfoResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

.field private handleTime:I

.field private lastTemp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private preBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

.field private realTimeDataBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

.field private voltageResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x3c

    .line 135
    iput v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->handleTime:I

    .line 147
    new-instance v0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;-><init>(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->BletimeHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;-><init>(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->baseInfoResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 198
    new-instance v0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;-><init>(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->voltageResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->realTimeDataBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->realTimeDataBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getTempStr(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->handleTime:I

    return p0
.end method

.method static synthetic access$602(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->preBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    return-object p1
.end method

.method private closeNotification()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method private createNotification()V
    .locals 5

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0d0034

    const-string v2, "service_bms"

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 100
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notificationManager:Landroid/app/NotificationManager;

    .line 101
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 103
    iget-object v3, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notification:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Service"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0700d2

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notification:Landroid/app/Notification;

    :cond_1
    const/16 v0, 0x67

    .line 113
    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->startForeground(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method private getTempStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 250
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v2, ","

    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 255
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->lastTemp:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->lastTemp:Ljava/lang/String;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getVoltagesStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 236
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 238
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iget v2, v2, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v2, ","

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLogin()Z
    .locals 2

    .line 141
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "sp_key_user_token"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->createNotification()V

    .line 58
    iput-object p0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    .line 63
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    .line 65
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->baseInfoCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->baseInfoResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 66
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->batteryVoltageCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->voltageResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 120
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->closeNotification()V

    .line 121
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->realTimeDataBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->realTimeDataBean:Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->insertOrReplace(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->BletimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->createNotification()V

    .line 75
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->BletimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0xc350

    const-wide/16 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
