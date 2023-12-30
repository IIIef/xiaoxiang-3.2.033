.class final Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;
.super Landroid/os/Handler;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CaptureActivityHandler"
.end annotation


# instance fields
.field decodeThread:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

.field private state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

.field final synthetic this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;


# direct methods
.method public constructor <init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V
    .locals 1

    .line 465
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

    .line 466
    new-instance v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

    invoke-direct {v0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;-><init>(Lcom/libs/qrcodecamera/activity/ActivityScanerCode;)V

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

    .line 467
    invoke-virtual {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->start()V

    .line 468
    sget-object p1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->SUCCESS:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 469
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/libs/qrcodecamera/module/CameraManager;->startPreview()V

    .line 470
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    sget-object v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->SUCCESS:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    if-ne v0, v1, :cond_0

    .line 502
    sget-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->PREVIEW:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 503
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

    invoke-virtual {v1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/libs/cameras/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/libs/qrcodecamera/module/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 504
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    sget v1, Lcom/libs/cameras/R$id;->auto_focus:I

    invoke-virtual {v0, p0, v1}, Lcom/libs/qrcodecamera/module/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 475
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/libs/cameras/R$id;->auto_focus:I

    if-ne v0, v1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    sget-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->PREVIEW:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    if-ne p1, v0, :cond_3

    .line 477
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object p1

    sget v0, Lcom/libs/cameras/R$id;->auto_focus:I

    invoke-virtual {p1, p0, v0}, Lcom/libs/qrcodecamera/module/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 479
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/libs/cameras/R$id;->restart_preview:I

    if-ne v0, v1, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 481
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/libs/cameras/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_2

    .line 482
    sget-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->SUCCESS:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 483
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->this$0:Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 484
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/libs/cameras/R$id;->decode_failed:I

    if-ne p1, v0, :cond_3

    .line 485
    sget-object p1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->PREVIEW:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 486
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/libs/cameras/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcom/libs/qrcodecamera/module/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public quitSynchronously()V
    .locals 1

    .line 491
    sget-object v0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;->DONE:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    iput-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->state:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$State;

    .line 492
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->decodeThread:Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$DecodeThread;->interrupt()V

    .line 493
    invoke-static {}, Lcom/libs/qrcodecamera/module/CameraManager;->get()Lcom/libs/qrcodecamera/module/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/libs/qrcodecamera/module/CameraManager;->stopPreview()V

    .line 494
    sget v0, Lcom/libs/cameras/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    .line 495
    sget v0, Lcom/libs/cameras/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    .line 496
    sget v0, Lcom/libs/cameras/R$id;->decode:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    .line 497
    sget v0, Lcom/libs/cameras/R$id;->auto_focus:I

    invoke-virtual {p0, v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode$CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
