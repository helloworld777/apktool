.class public Lcom/ryg/dynamicload/DLProxyFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DLProxyFragmentActivity.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLAttachable;


# instance fields
.field private impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

.field protected mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    .line 37
    return-void
.end method


# virtual methods
.method public attach(Lcom/ryg/dynamicload/DLPlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V
    .locals 0
    .parameter "remoteActivity"
    .parameter "pluginManager"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    .line 51
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/ryg/dynamicload/DLPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onBackPressed()V

    .line 136
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {p0}, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->onCreate(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onDestroy()V

    .line 112
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 113
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 148
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1, p2}, Lcom/ryg/dynamicload/DLPlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 172
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onPause()V

    .line 100
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 101
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onRestart()V

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 89
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onResume()V

    .line 94
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 95
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onStart()V

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onStop()V

    .line 106
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 107
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onWindowFocusChanged(Z)V

    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 161
    return-void
.end method
