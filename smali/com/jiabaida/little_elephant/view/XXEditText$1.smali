.class Lcom/jiabaida/little_elephant/view/XXEditText$1;
.super Ljava/lang/Object;
.source "XXEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/XXEditText;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/XXEditText;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/XXEditText;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$000(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$100(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$000(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$100(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$200(Lcom/jiabaida/little_elephant/view/XXEditText;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setWarnText(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$100(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$000(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$100(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/view/XXEditText;->access$300(Lcom/jiabaida/little_elephant/view/XXEditText;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText$1;->this$0:Lcom/jiabaida/little_elephant/view/XXEditText;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->setWarnText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
