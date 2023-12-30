.class Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/ControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private name:Landroid/widget/TextView;

.field private resImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->resImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/ControlAdapter$ViewHolder;->resImg:Landroid/widget/ImageView;

    return-object p1
.end method
