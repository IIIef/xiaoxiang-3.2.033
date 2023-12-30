.class public Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;
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
    name = "SpinnerViewwShow"
.end annotation


# instance fields
.field private mView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    return-object v0
.end method

.method public isValueAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 251
    invoke-static {}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spinner :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, ""

    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "0"

    .line 243
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spinner :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 245
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;->mView:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    return-void
.end method
