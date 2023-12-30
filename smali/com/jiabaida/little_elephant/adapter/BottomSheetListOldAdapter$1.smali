.class Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$1;
.super Ljava/lang/Object;
.source "BottomSheetListOldAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;->onBindViewHolder(Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$AdapterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

    iput p2, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;->access$100(Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$BottomItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$1;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;->access$100(Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter;)Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$BottomItemListener;

    move-result-object v0

    iget v1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p2}, Lcom/jiabaida/little_elephant/adapter/BottomSheetListOldAdapter$BottomItemListener;->onClickCheck(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
