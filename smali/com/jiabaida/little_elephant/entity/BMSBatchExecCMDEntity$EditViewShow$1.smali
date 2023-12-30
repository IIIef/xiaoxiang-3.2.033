.class Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;
.super Ljava/lang/Object;
.source "BMSBatchExecCMDEntity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const-string p2, "~"

    const-string p3, "\u53d6\u503c\u8303\u56f4\u4e3a\uff1a"

    .line 278
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 279
    iget-object p4, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget p4, p4, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->min:F

    cmpg-float p4, p1, p4

    if-gez p4, :cond_0

    .line 280
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->min:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->max:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p4, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget p4, p4, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->max:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->min:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->max:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget p3, p3, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->min:F

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;->this$0:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->max:F

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
