.class public Lcom/libs/qrcodecamera/tool/RxVibrateTool;
.super Ljava/lang/Object;
.source "RxVibrateTool.java"


# static fields
.field private static vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrateComplicated(Landroid/content/Context;[JI)V
    .locals 1

    const-string v0, "vibrator"

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lcom/libs/qrcodecamera/tool/RxVibrateTool;->vibrator:Landroid/os/Vibrator;

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public static vibrateOnce(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "vibrator"

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lcom/libs/qrcodecamera/tool/RxVibrateTool;->vibrator:Landroid/os/Vibrator;

    int-to-long v0, p1

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static vibrateStop()V
    .locals 1

    .line 50
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxVibrateTool;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method
