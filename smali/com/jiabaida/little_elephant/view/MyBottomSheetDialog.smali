.class public Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;
.super Landroid/app/Dialog;
.source "MyBottomSheetDialog.java"


# instance fields
.field private adapter:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

.field private itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private rvDialogBottom:Landroidx/recyclerview/widget/RecyclerView;

.field private title:Ljava/lang/String;

.field private tvDialogBottomCanel:Landroid/widget/TextView;

.field private tvDialogBottomTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/BottomSelectBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0e016e

    .line 46
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->list:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f080226

    .line 102
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->tvDialogBottomTitle:Landroid/widget/TextView;

    const v0, 0x7f080175

    .line 103
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->rvDialogBottom:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f080225

    .line 105
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->tvDialogBottomCanel:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->tvDialogBottomTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u63d0\u793a"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->adapter:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    .line 109
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->rvDialogBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->adapter:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$1;-><init>(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->tvDialogBottomCanel:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog$2;-><init>(Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0052

    .line 56
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f0e016d

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 60
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->setFullScreenWidth()V

    .line 61
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->initView()V

    return-void
.end method

.method public setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    return-void
.end method

.method public setFullScreen()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 71
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 72
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setFullScreenHeight()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setFullScreenWidth()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 83
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 84
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
