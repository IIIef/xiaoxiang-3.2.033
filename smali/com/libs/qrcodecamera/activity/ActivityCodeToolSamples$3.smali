.class Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;
.super Ljava/lang/Object;
.source "ActivityCodeToolSamples.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;


# direct methods
.method constructor <init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 169
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    const-class v1, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    new-instance v0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3$1;

    invoke-direct {v0, p0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3$1;-><init>(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;)V

    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityScanerCode;->setScanerListener(Lcom/libs/qrcodecamera/interfaces/OnRxScanerListener;)V

    .line 181
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$3;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-virtual {v0, p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
