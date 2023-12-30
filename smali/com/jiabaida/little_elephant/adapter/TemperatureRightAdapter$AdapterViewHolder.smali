.class public Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TemperatureRightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

.field private tvItemTermperatureName:Landroid/widget/TextView;

.field private tvItemTermperatureNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;Landroid/view/View;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter;

    .line 100
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08023b

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->tvItemTermperatureNum:Landroid/widget/TextView;

    const p1, 0x7f08023a

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->tvItemTermperatureName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->tvItemTermperatureName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureRightAdapter$AdapterViewHolder;->tvItemTermperatureNum:Landroid/widget/TextView;

    return-object p0
.end method
