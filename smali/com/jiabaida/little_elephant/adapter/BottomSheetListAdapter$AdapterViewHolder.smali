.class public Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BottomSheetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field private bottomCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;Landroid/view/View;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;->this$0:Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter;

    .line 80
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0800dd

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;->bottomCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$AdapterViewHolder;->bottomCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method
