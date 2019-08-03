#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd
import numpy as np
import seaborn as sns


# In[3]:


def readfastq(filename):
    sequences=[]
    with open(filename) as fh:
        while True:
            fh.readline()
            seq=fh.readline().rstrip()
            fh.readline().rstrip()
            fh.readline()
            if len(seq)==0:
                break
            sequences.append(seq)
        return sequences
    


# In[8]:


ctr_1 = readfastq('new_miRNA/ctr_1_at2nd_size.fastq')


# In[ ]:





# In[ ]:


#ctr_3 = readfastq('/home/wschrein/new_miRNA/ctr_3_at2nd_size.fastq')


# In[10]:


#length_of_ctrl_1 = [len(i) for i in ctr_1]

#length_of_ctrl_2 = [len(i) for i in ctr_2]

#length_of_ctrl_3 = [len(i) for i in ctr_3]


# In[17]:


print(np.mean(length_of_ctrl_1))
print(np.median(length_of_ctrl_1))


# In[9]:


sns.distplot(length_of_ctrl_1)
plt.save('ctrl_1.png')


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[94]:





# In[ ]:




