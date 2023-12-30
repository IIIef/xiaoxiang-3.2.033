.class public Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;
.super Ljava/lang/Object;
.source "BMSBatchExecCMDEntity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditViewShow"
.end annotation


# instance fields
.field public mView:Landroid/widget/EditText;

.field max:F

.field min:F

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p1, v0, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;-><init>(Landroid/widget/EditText;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;FF)V
    .locals 1

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow$1;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->textWatcher:Landroid/text/TextWatcher;

    .line 316
    iput p2, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->min:F

    .line 317
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->max:F

    .line 318
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_0

    .line 320
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    return-object v0
.end method

.method public isValueAvailable()Z
    .locals 4

    .line 356
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 357
    iget v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->min:F

    iget v2, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->max:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->mView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 338
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->setTag(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;->setValue(Ljava/lang/String;)V

    return-void
.end method
