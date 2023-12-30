.class public Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TemperatureLeftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

.field private tvItemTermperatureName:Landroid/widget/TextView;

.field private tvItemTermperatureNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;Landroid/view/View;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter;

    .line 81
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08023b

    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->tvItemTermperatureNum:Landroid/widget/TextView;

    const p1, 0x7f08023a

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->tvItemTermperatureName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->tvItemTermperatureName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/TemperatureLeftAdapter$AdapterViewHolder;->tvItemTermperatureNum:Landroid/widget/TextView;

    return-object p0
.end method
