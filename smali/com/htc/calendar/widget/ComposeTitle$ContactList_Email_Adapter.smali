.class Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;
.super Landroid/widget/IMECursorAdapter;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactList_Email_Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    .line 1991
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/IMECursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1992
    return-void
.end method

.method static synthetic access$2100(Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;)Landroid/widget/CursorAdapter$ChangeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2046
    const-string v6, "display_name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2049
    .local v4, name:Ljava/lang/String;
    const-string v6, "data1"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2050
    .local v3, address:Ljava/lang/String;
    const-string v6, "data2"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2051
    .local v2, _type:Ljava/lang/String;
    const-string v6, "data3"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2052
    .local v0, _label:Ljava/lang/String;
    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2054
    .local v1, _methodId:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 2055
    iget-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/htc/calendar/widget/ComposeTitle;->access$1800(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2074
    :cond_0
    const v6, 0x7f0d002d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 2075
    .local v5, text1:Lcom/htc/widget/HtcListItem2LineText;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2095
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mCursor:Landroid/database/Cursor;

    .line 2001
    .local v0, tmpCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2002
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;Landroid/database/Cursor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2019
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mCursor:Landroid/database/Cursor;

    .line 2020
    if-eqz p1, :cond_2

    .line 2021
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2022
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2023
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mRowIDColumn:I

    .line 2024
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mDataValid:Z

    .line 2026
    invoke-virtual {p0}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2028
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mRowIDColumn:I

    .line 2029
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mDataValid:Z

    .line 2031
    invoke-virtual {p0}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1989
    invoke-virtual {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2302(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2101
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2402(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2102
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, "contact_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2502(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2103
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2602(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2104
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$2300(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2400(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2302(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$2300(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2037
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2038
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 2040
    .local v1, view:Lcom/htc/widget/HtcListItem;
    return-object v1
.end method

.method public reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2130
    if-nez p1, :cond_0

    move-object v0, v1

    .line 2137
    :goto_0
    return-object v0

    .line 2134
    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2135
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doFilterEmailType(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$2700(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2137
    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 2120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2121
    :cond_0
    const/4 v0, 0x0

    .line 2125
    :goto_0
    return-object v0

    .line 2122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2123
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, ""

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doFilterEmailType(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2700(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 2125
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doFilterEmailType(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2700(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
