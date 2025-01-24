from xml.dom import minidom


def read_xml(node_name):
    # parse an xml file by name
    my_doc = minidom.parse('/Users/apple/Documents/python_training/Robot_Framework/global.xml')
    data = my_doc.getElementsByTagName(node_name)[0]
    return data.firstChild.data
