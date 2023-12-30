.class Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;
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

    .line 102
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$000(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-virtual {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4e8c\u7ef4\u7801\u6587\u5b57\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$100(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxQRCode;->builder(Ljava/lang/CharSequence;)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 113
    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->backColor(I)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;

    move-result-object p1

    const/high16 v0, -0x1000000

    .line 114
    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeColor(I)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;

    move-result-object p1

    const/16 v0, 0x258

    .line 115
    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->codeSide(I)Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    .line 116
    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$200(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxQRCode$Builder;->into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 121
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$200(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-virtual {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4e8c\u7ef4\u7801\u5df2\u751f\u6210!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$300(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    .line 128
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$1;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$400(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    :goto_0
    return-void
.end method
