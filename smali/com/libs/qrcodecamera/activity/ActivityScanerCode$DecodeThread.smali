.class final Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;
.super Ljava/lang/Thread;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DecodeThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;


# direct methods
.method constructor <init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V
    .locals 1

    .line 514
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 515
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :catch_0
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 529
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 530
    new-instance v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeHandler;

    iget-object v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {v0, v1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeHandler;-><init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->handler:Landroid/os/Handler;

    .line 531
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 532
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
