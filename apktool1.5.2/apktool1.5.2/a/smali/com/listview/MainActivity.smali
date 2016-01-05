.class public Lcom/listview/MainActivity;
.super Landroid/app/ListActivity;
.source "MainActivity.java"


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v6, 0x7f04001b

    invoke-virtual {p0, v6}, Lcom/listview/MainActivity;->setContentView(I)V

    .line 41
    const/16 v6, 0x14

    new-array v3, v6, [Ljava/lang/String;

    .line 42
    .local v3, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    const v8, 0x1020014

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, p0, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v6, p0, Lcom/listview/MainActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 50
    iget-object v6, p0, Lcom/listview/MainActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/listview/MainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/listview/MainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 56
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Lcom/listview/SwipeDismissListViewTouchListener;

    new-instance v6, Lcom/listview/MainActivity$1;

    invoke-direct {v6, p0}, Lcom/listview/MainActivity$1;-><init>(Lcom/listview/MainActivity;)V

    invoke-direct {v5, v4, v6}, Lcom/listview/SwipeDismissListViewTouchListener;-><init>(Landroid/widget/ListView;Lcom/listview/SwipeDismissListViewTouchListener$DismissCallbacks;)V

    .line 73
    .local v5, touchListener:Lcom/listview/SwipeDismissListViewTouchListener;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    invoke-virtual {v5}, Lcom/listview/SwipeDismissListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    const v6, 0x7f0c006c

    invoke-virtual {p0, v6}, Lcom/listview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .local v1, dismissableContainer:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 81
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, dismissableButton:Landroid/widget/Button;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Button "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v6, Lcom/listview/MainActivity$2;

    invoke-direct {v6, p0}, Lcom/listview/MainActivity$2;-><init>(Lcom/listview/MainActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v6, Lcom/listview/SwipeDismissTouchListener;

    const/4 v7, 0x0

    new-instance v8, Lcom/listview/MainActivity$3;

    invoke-direct {v8, p0, v1, v0}, Lcom/listview/MainActivity$3;-><init>(Lcom/listview/MainActivity;Landroid/view/ViewGroup;Landroid/widget/Button;)V

    invoke-direct {v6, v0, v7, v8}, Lcom/listview/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v0           #dismissableButton:Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "listView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clicked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/listview/MainActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    return-void
.end method
