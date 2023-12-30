.class public Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;
.super Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;
.source "ParamsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.fragment.ParamsFragment"


# instance fields
.field private flTopBack:Landroid/widget/FrameLayout;

.field private listItemData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ParamsItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private paramsAdapter:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

.field private params_list:Landroidx/recyclerview/widget/RecyclerView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->listItemData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->paramsAdapter:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->params_list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a005b

    return v0
.end method

.method public changeInitStatus(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 328
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_ble_auth"

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 329
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->initDataList(Z)V

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initData()+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->listItemData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----frm:"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->paramsAdapter:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    .line 338
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->listItemData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->setNewData(Ljava/util/List;)V

    .line 340
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->params_list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->paramsAdapter:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 341
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->paramsAdapter:Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/ParamsAdapter;->setOnItemClickListener(Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;)V

    return-void
.end method

.method public initDataList(Z)V
    .locals 21

    move-object/from16 v0, p0

    const/16 v1, 0xb

    new-array v2, v1, [I

    .line 186
    fill-array-data v2, :array_0

    new-array v3, v1, [Ljava/lang/String;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0107

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0d010b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    aput-object v4, v3, v10

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f0d010c

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v3, v12

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0d00ea

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x4

    aput-object v4, v3, v14

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v15, 0x7f0d0122

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x5

    aput-object v4, v3, v16

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x7f0d00ca

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x6

    aput-object v4, v3, v17

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x7f0d0146

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x7

    aput-object v4, v3, v18

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x7f0d00fe

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x8

    aput-object v4, v3, v19

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x7f0d0121

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v3, v4

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d00b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v3, v4

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    sget-boolean v1, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    if-nez v1, :cond_0

    new-array v3, v4, [Ljava/lang/String;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v12

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v14

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v16

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v17

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v18

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v19

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v3, v2

    new-array v2, v4, [I

    .line 214
    fill-array-data v2, :array_1

    .line 219
    :cond_0
    sget v1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v15, 0x2716

    if-ne v1, v15, :cond_4

    new-array v3, v4, [Ljava/lang/String;

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v12

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v14

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v16

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v17

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v18

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v19

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v3, v2

    new-array v2, v4, [I

    .line 230
    fill-array-data v2, :array_2

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 236
    fill-array-data v1, :array_3

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d0122

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d00ca

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v17

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d0146

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d00e8

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v19

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d00fe

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x9

    aput-object v3, v2, v15

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d0121

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f0d00b5

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0xb

    aput-object v3, v2, v15

    .line 253
    sget-boolean v3, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    if-nez v3, :cond_2

    new-array v1, v15, [Ljava/lang/String;

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v18

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v19

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v3, 0xb

    new-array v2, v3, [I

    .line 265
    fill-array-data v2, :array_4

    goto :goto_0

    :cond_2
    const/16 v3, 0xb

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    .line 270
    :goto_0
    sget v15, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v4, 0x2716

    if-ne v15, v4, :cond_3

    new-array v1, v3, [Ljava/lang/String;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v18

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v19

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v2, 0xb

    new-array v2, v2, [I

    .line 282
    fill-array-data v2, :array_5

    :cond_3
    move-object v3, v1

    .line 291
    :cond_4
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_5

    .line 293
    sget v4, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v5, 0x2717

    if-ne v4, v5, :cond_7

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 295
    :goto_2
    array-length v4, v3

    if-ge v6, v4, :cond_9

    if-ne v6, v8, :cond_6

    .line 296
    sget-boolean v4, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    if-nez v4, :cond_6

    goto :goto_3

    .line 299
    :cond_6
    new-instance v4, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    aget-object v5, v3, v6

    aget v7, v2, v6

    invoke-direct {v4, v6, v5, v7}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 302
    :cond_7
    new-instance v4, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    aget-object v3, v3, v6

    aget v2, v2, v6

    invoke-direct {v4, v6, v3, v2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    sget v2, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v3, 0x2716

    if-eq v2, v3, :cond_8

    sget-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->displayInit:Z

    if-eqz v2, :cond_8

    .line 304
    new-instance v2, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    invoke-virtual {v0, v7}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700b5

    invoke-direct {v2, v8, v3, v4}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_8
    sget-boolean v2, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    if-eqz v2, :cond_9

    .line 307
    new-instance v2, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;

    invoke-virtual/range {p0 .. p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-direct {v2, v8, v3, v4}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_9
    iget-object v2, v0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->params_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;

    invoke-direct {v3, v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0700b1
        0x7f0700b5
        0x7f0700b8
        0x7f0700b8
        0x7f0700b2
        0x7f0700bb
        0x7f0700b6
        0x7f0700b3
        0x7f0700b4
        0x7f0700ba
        0x7f0b000e
    .end array-data

    :array_1
    .array-data 4
        0x7f0700b1
        0x7f0700b5
        0x7f0700b8
        0x7f0700b8
        0x7f0700b2
        0x7f0700bb
        0x7f0700b6
        0x7f0700b3
        0x7f0700b4
        0x7f0700ba
    .end array-data

    :array_2
    .array-data 4
        0x7f0700b1
        0x7f0700b5
        0x7f0700b8
        0x7f0700b8
        0x7f0700b2
        0x7f0700bb
        0x7f0700b6
        0x7f0700b3
        0x7f0700b4
        0x7f0b000e
    .end array-data

    :array_3
    .array-data 4
        0x7f0700b1
        0x7f0700b5
        0x7f0700b8
        0x7f0700b8
        0x7f0700b2
        0x7f0700bb
        0x7f0700b6
        0x7f0700b3
        0x7f0700b7
        0x7f0700b4
        0x7f0700ba
        0x7f0b000e
    .end array-data

    :array_4
    .array-data 4
        0x7f0700b1
        0x7f0700b5
        0x7f0700b8
        0x7f0700b8
        0x7f0700b2
        0x7f0700bb
        0x7f0700b6
        0x7f0700b3
        0x7f0700b7
        0x7f0700b4
        0x7f0700ba
    .end array-data

    :array_5
    .array-data 4
        0x7f0700b1
        0x7f0700b5
        0x7f0700b8
        0x7f0700b8
        0x7f0700b2
        0x7f0700bb
        0x7f0700b6
        0x7f0700b3
        0x7f0700b7
        0x7f0700b4
        0x7f0b000e
    .end array-data
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f080137

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800c3

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->flTopBack:Landroid/widget/FrameLayout;

    const v0, 0x7f0802a0

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->tvTopTitle:Landroid/widget/TextView;

    const v0, 0x7f0802a2

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->tvTopTitleR:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->tvTopTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->tvTopTitleR:Landroid/widget/TextView;

    const-string v4, ""

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v0, 0x7f080153

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->params_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method protected initViewPager(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected lazyLoad()V
    .locals 1

    .line 82
    sget-object v0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onDestroy()V

    .line 100
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusBMSMsg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 111
    sget-object p1, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->TAG:Ljava/lang/String;

    const-string v0, "ParamsFragment permission event bus"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFragmentVisibleChange(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 138
    sget-object p1, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->TAG:Ljava/lang/String;

    sput-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFragmentVisibleChange()+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->listItemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "----frm:"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "BluetoothMac"

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "sp_key_user_token"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->initDataList(Z)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, "sp_key_ble_auth"

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->initDataList(Z)V

    .line 149
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->queryDevicePermissions(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onResume()V

    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
