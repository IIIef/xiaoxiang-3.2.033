.class Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$4;
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

    .line 185
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$4;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$4;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$800(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$4;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$900(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
