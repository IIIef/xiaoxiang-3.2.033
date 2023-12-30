.class public final Lcom/libs/qrcodecamera/module/decoding/FinishListener;
.super Ljava/lang/Object;
.source "FinishListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final activityToFinish:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/libs/qrcodecamera/module/decoding/FinishListener;->activityToFinish:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/module/decoding/FinishListener;->run()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/libs/qrcodecamera/module/decoding/FinishListener;->run()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/libs/qrcodecamera/module/decoding/FinishListener;->activityToFinish:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
