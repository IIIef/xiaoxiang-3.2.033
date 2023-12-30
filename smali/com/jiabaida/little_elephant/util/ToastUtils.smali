.class public Lcom/jiabaida/little_elephant/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field public static final defaultGravity:I = -0x42

.field private static mInstance:Lcom/jiabaida/little_elephant/util/ToastUtils;

.field private static msg:Ljava/lang/String;

.field private static toast:Landroid/widget/Toast;

.field private static toastView:Landroid/widget/Toast;


# instance fields
.field private duration:I

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/jiabaida/little_elephant/util/ToastUtils;->duration:I

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 16
    sget-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 16
    sput-object p0, Lcom/jiabaida/little_elephant/util/ToastUtils;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;
    .locals 2

    .line 27
    sget-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->mInstance:Lcom/jiabaida/little_elephant/util/ToastUtils;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/jiabaida/little_elephant/util/ToastUtils;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/jiabaida/little_elephant/util/ToastUtils;->mInstance:Lcom/jiabaida/little_elephant/util/ToastUtils;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/jiabaida/little_elephant/util/ToastUtils;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;-><init>()V

    sput-object v1, Lcom/jiabaida/little_elephant/util/ToastUtils;->mInstance:Lcom/jiabaida/little_elephant/util/ToastUtils;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->mInstance:Lcom/jiabaida/little_elephant/util/ToastUtils;

    return-object v0
.end method

.method private toastDefault(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v7, Lcom/jiabaida/little_elephant/util/ToastUtils$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/util/ToastUtils$1;-><init>(Lcom/jiabaida/little_elephant/util/ToastUtils;Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 94
    sget-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 96
    sput-object v1, Lcom/jiabaida/little_elephant/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 98
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastView:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 100
    sput-object v1, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastView:Landroid/widget/Toast;

    :cond_1
    return-void
.end method

.method public showDefault(Landroid/content/Context;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/jiabaida/little_elephant/util/ToastUtils;->msg:Ljava/lang/String;

    iget v0, p0, Lcom/jiabaida/little_elephant/util/ToastUtils;->duration:I

    const/16 v1, 0x11

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastDefault(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public showDefault(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    sput-object p2, Lcom/jiabaida/little_elephant/util/ToastUtils;->msg:Ljava/lang/String;

    iget v0, p0, Lcom/jiabaida/little_elephant/util/ToastUtils;->duration:I

    const/16 v1, 0x11

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastDefault(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public showDefault(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    sput-object p2, Lcom/jiabaida/little_elephant/util/ToastUtils;->msg:Ljava/lang/String;

    iput p3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils;->duration:I

    const/16 v0, 0x11

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastDefault(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public showDefault(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    sput-object p2, Lcom/jiabaida/little_elephant/util/ToastUtils;->msg:Ljava/lang/String;

    iget p3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils;->duration:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastDefault(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public showLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    sput-object p2, Lcom/jiabaida/little_elephant/util/ToastUtils;->msg:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x11

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->toastDefault(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
