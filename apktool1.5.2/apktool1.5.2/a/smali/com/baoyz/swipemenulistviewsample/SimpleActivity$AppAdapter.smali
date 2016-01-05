.class Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baoyz/swipemenulistviewsample/SimpleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 199
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    #getter for: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    #getter for: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    new-instance v2, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;-><init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;Landroid/view/View;)V

    .line 192
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;

    .line 193
    .local v0, holder:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 194
    .local v1, item:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v2, v0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-object p2
.end method
