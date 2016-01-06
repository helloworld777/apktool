.class Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "DifferentMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 177
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # getter for: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # getter for: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    rem-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 168
    new-instance v2, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;-><init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;Landroid/view/View;)V

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;

    .line 171
    .local v0, "holder":Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 172
    .local v1, "item":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v2, v0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x3

    return v0
.end method
