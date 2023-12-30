.class Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;
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

    .line 133
    iput-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$500(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-virtual {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6761\u5f62\u7801\u6587\u5b57\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$600(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-static {p1}, Lcom/libs/qrcodecamera/tool/RxBarCode;->builder(Ljava/lang/CharSequence;)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1, v1}, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->backColor(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;

    move-result-object p1

    const/high16 v0, -0x1000000

    .line 147
    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeColor(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 148
    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeWidth(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;

    move-result-object p1

    const/16 v0, 0x12c

    .line 149
    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->codeHeight(I)Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    .line 150
    invoke-static {v0}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$700(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/libs/qrcodecamera/tool/RxBarCode$Builder;->into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 155
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$700(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-virtual {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6761\u5f62\u7801\u5df2\u751f\u6210!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 160
    iget-object p1, p0, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples$2;->this$0:Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;

    invoke-static {p1}, Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;->access$300(Lcom/libs/qrcodecamera/activity/ActivityCodeToolSamples;)V

    :goto_0
    return-void
.end method
