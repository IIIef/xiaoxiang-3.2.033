.class public Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TemperatureRightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

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

    .line 21
    check-cast p1, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;I)V
    .locals 9

    .line 56
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->access$000(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0163

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u2103"

    const-string v3, "\u00b0F"

    const/4 v4, 0x2

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x41100000    # 9.0f

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getTemperature()F

    move-result v0

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_0

    .line 59
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0088

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getTemperature()F

    move-result p2

    .line 65
    sget-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isChinese:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    mul-float p2, p2, v7

    div-float/2addr p2, v6

    add-float/2addr p2, v5

    float-to-double v0, p2

    .line 70
    invoke-static {v0, v1, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jiabaida/little_elephant/entity/TemperatureBean;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/TemperatureBean;->getTemperature()F

    move-result p2

    .line 78
    sget-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isChinese:Z

    if-eqz v0, :cond_3

    .line 81
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    mul-float p2, p2, v7

    div-float/2addr p2, v6

    add-float/2addr p2, v5

    float-to-double v0, p2

    .line 83
    invoke-static {v0, v1, v4}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-static {p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0062

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;-><init>(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/TemperatureBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->mListData:Ljava/util/List;

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;->notifyDataSetChanged()V

    return-void
.end method
