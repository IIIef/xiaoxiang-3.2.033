.class public Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;
.super Landroid/app/Dialog;
.source "MyBottomSheetOldDialog.java"


# instance fields
.field private adapter:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

.field private checked:Ljava/lang/String;

.field private itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0e016e

    .line 47
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->list:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->title:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->checked:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    return-object p0
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f080226

    .line 105
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->tvDialogBottomTitle:Landroid/widget/TextView;

    const v0, 0x7f080175

    .line 106
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->rvDialogBottom:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f080225

    .line 108
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->tvDialogBottomCanel:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->tvDialogBottomTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u63d0\u793a"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 111
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->checked:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->adapter:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

    .line 112
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->rvDialogBottom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->adapter:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$1;-><init>(Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;->setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$BottomItemListener;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->tvDialogBottomCanel:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog$2;-><init>(Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0052

    .line 59
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f0e016d

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 63
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->setFullScreenWidth()V

    .line 64
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->initView()V

    return-void
.end method

.method public setBottomItemListener(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->itemListener:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    return-void
.end method

.method public setFullScreen()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 74
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setFullScreenHeight()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 98
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 99
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setFullScreenWidth()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/MyBottomSheetOldDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 86
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 87
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
