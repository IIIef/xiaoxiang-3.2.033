.class Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3$1;
.super Ljava/lang/Object;
.source "ActivityCodeToolSamples.java"

# interfaces
.implements Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;


# direct methods
.method constructor <init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3$1;->this$1:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3$1;->this$1:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;

    iget-object v0, v0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/google/zxing/Result;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3$1;->this$1:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;

    iget-object v0, v0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
