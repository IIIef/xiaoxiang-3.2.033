.class Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;
.super Ljava/lang/Object;
.source "BottomSheetListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    iput p2, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->access$100(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;->access$100(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;

    move-result-object v0

    iget v1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p2}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;->onClickCheck(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
