.class Lcom/jiabaida/little_elephant/util/DialogUtils$2;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/DialogUtils;->passWordDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/DialogUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isSecondPsw:[Z

.field final synthetic val$passWordEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/DialogUtils;Landroid/widget/EditText;[ZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->this$0:Lcom/jiabaida/little_elephant/util/DialogUtils;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$passWordEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$isSecondPsw:[Z

    iput-object p4, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$passWordEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$isSecondPsw:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, p1, v0

    .line 125
    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$passWordEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$passWordEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0d00a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/DialogUtils$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
