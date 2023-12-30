.class public Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SingleVoltageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private heightVoltage:F

.field private lowVoltage:F

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public calculate(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 60
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getNowVoltage()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    sub-int v4, v0, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 66
    aget v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v1, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 67
    aget v4, v1, v3

    .line 68
    aget v6, v1, v5

    aput v6, v1, v3

    .line 69
    aput v4, v1, v5

    :cond_1
    move v3, v5

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 74
    :cond_3
    aget p1, v1, v3

    iput p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->heightVoltage:F

    .line 75
    aget p1, v1, v2

    iput p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->lowVoltage:F

    :cond_4
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;I)V
    .locals 3

    .line 96
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getNowVoltage()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getMaxVoltage()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 98
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getNowVoltage()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$200(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Lcom/jiabaida/little_elephant/view/CircleTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/view/CircleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getNowVoltage()F

    move-result v0

    iget v1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->heightVoltage:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 102
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f07011b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->getNowVoltage()F

    move-result p2

    iget v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->lowVoltage:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    .line 104
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f07011a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f070119

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0060

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->mListData:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->calculate(Ljava/util/List;)V

    .line 48
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/SingleVoltageAdapter;->notifyDataSetChanged()V

    return-void
.end method
