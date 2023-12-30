.class Lcom/jiabaida/little_elephant/view/listview/ScanListView$1;
.super Ljava/lang/Object;
.source "ScanListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/listview/ScanListView;->initWithContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/listview/ScanListView;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/listview/ScanListView;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$1;->this$0:Lcom/jiabaida/little_elephant/view/listview/ScanListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$1;->this$0:Lcom/jiabaida/little_elephant/view/listview/ScanListView;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->access$100(Lcom/jiabaida/little_elephant/view/listview/ScanListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->access$002(Lcom/jiabaida/little_elephant/view/listview/ScanListView;I)I

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/listview/ScanListView$1;->this$0:Lcom/jiabaida/little_elephant/view/listview/ScanListView;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/view/listview/ScanListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
